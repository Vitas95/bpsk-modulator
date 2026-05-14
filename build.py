import os
import subprocess
import shutil
import datetime
import argparse
import logging

# --- CONFIGURATION ---
XILINX_ROOT = r"C:\Xilinx\14.7\ISE_DS\ISE"
SV2V_PATH = "sv2v"
PROJECT_NAME = "top"
DEVICE = "xc6slx16-ftg256-3"
# Search everything inside submodules + root for top.sv
SUBMODULES_DIR = os.path.abspath("./submodules")
ROOT_DIR = os.path.abspath(".")
CONSTRAINTS_DIR = os.path.abspath("./constraints")

BUILD_DIR = os.path.abspath("./build")
RELEASE_DIR = os.path.abspath("./releases")


def setup_logging():
    """Configure logging to both stdout and a timestamped log file in BUILD_DIR."""
    if not os.path.exists(BUILD_DIR):
        os.makedirs(BUILD_DIR)

    ts = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_path = os.path.join(BUILD_DIR, f"build_{ts}.log")

    logging.basicConfig(
        level=logging.INFO,
        format="%(message)s",
        handlers=[
            logging.StreamHandler(),
            logging.FileHandler(log_path, encoding="utf-8"),
        ],
    )
    logging.info(f">>> Log file: {log_path}")


def log(msg):
    """Shorthand for logging.info."""
    logging.info(msg)


def get_ise_env():
    env = os.environ.copy()
    bin_folder = "nt64" if os.name == "nt" else "lin64"
    bin_path = os.path.join(XILINX_ROOT, "bin", bin_folder)
    env["PATH"] = bin_path + os.pathsep + env.get("PATH", "")
    env["XILINX"] = XILINX_ROOT
    return env


def do_build(rebuild=False):
    """Step 2: Low-level build with SystemVerilog support (sv2v)"""
    log(f">>> [BUILD] Starting build...")

    if not os.path.exists(BUILD_DIR):
        os.makedirs(BUILD_DIR)

    # --- 1. COLLECT FILES ---
    raw_sources = []
    ngc_files = []
    ip_dirs = set()
    ucf_file = ""
    has_sv = False

    # Look for Top in the root directory
    for ext in [".sv", ".v"]:
        potential_top = os.path.join(ROOT_DIR, f"top{ext}")
        if os.path.exists(potential_top):
            raw_sources.append(os.path.abspath(potential_top))
            if ext == ".sv":
                has_sv = True
            break

    # Collect everything from submodules
    if os.path.exists(SUBMODULES_DIR):
        for root, _, files in os.walk(SUBMODULES_DIR):
            for f in files:
                full_path = os.path.abspath(os.path.join(root, f))
                if f.endswith((".v", ".sv")) and full_path not in raw_sources:
                    raw_sources.append(full_path)
                    if f.endswith(".sv"):
                        has_sv = True
                elif f.endswith(".ngc"):
                    ngc_files.append(full_path)
                    ip_dirs.add(os.path.abspath(root).replace("\\", "/"))

    # --- UCF VALIDATION ---
    if os.path.exists(CONSTRAINTS_DIR):
        ucf_candidates = [f for f in os.listdir(CONSTRAINTS_DIR) if f.endswith(".ucf")]
        if not ucf_candidates:
            log(
                f"!!! No .ucf file found in '{CONSTRAINTS_DIR}'. NGDBUILD will fail without constraints."
            )
            return False
        if len(ucf_candidates) > 1:
            log(
                f"!!! Multiple .ucf files found in '{CONSTRAINTS_DIR}': {ucf_candidates}"
            )
            log(f"!!! Please keep only one .ucf file. Aborting.")
            return False
        ucf_file = os.path.abspath(
            os.path.join(CONSTRAINTS_DIR, ucf_candidates[0])
        ).replace("\\", "/")
        log(f">>> [BUILD] Using constraints: {ucf_file}")
    else:
        log(
            f"!!! Constraints directory '{CONSTRAINTS_DIR}' not found. NGDBUILD requires a .ucf file."
        )
        return False

    if not raw_sources:
        log("!!! No source files found.")
        return False

    # --- 2. CONVERSION (IF NEEDED) ---
    final_hdl_files = []
    if has_sv:
        log(">>> [CONVERT] SystemVerilog detected. Running sv2v...")
        try:
            # Merge everything into a single .v file (forward slashes for subprocess)
            conv_v = os.path.join(BUILD_DIR, "all_design.v")
            subprocess.run([SV2V_PATH] + raw_sources + ["--write", conv_v], check=True)
            final_hdl_files = [conv_v]
        except Exception as e:
            log(f"!!! sv2v error: {e}")
            return False
    else:
        log(">>> [BUILD] Verilog only. Using source files as-is.")
        final_hdl_files = raw_sources

    # --- 3. PREPARE PRJ AND XST ---
    prj_path = os.path.join(BUILD_DIR, "top.prj")
    xst_path = os.path.join(BUILD_DIR, "top.xst")

    with open(prj_path, "w") as f:
        for src in final_hdl_files:
            src_path_tcl = src.replace("\\", "/")
            f.write(f'verilog work "{src_path_tcl}"\n')

    with open(xst_path, "w") as f:
        # Prepare paths for XST ahead of time
        prj_tcl = prj_path.replace("\\", "/")
        out_ngc = os.path.join(BUILD_DIR, "top.ngc").replace("\\", "/")
        f.write(f'run\n-ifn "{prj_tcl}"\n-ifmt mixed\n-ofn "{out_ngc}"\n-top top\n')
        f.write(f"-p {DEVICE}\n-opt_mode Speed\n-opt_level 1\n")

    # --- 4. RUN COMMANDS ---
    bin_p = os.path.join(XILINX_ROOT, "bin", "nt64" if os.name == "nt" else "lin64")
    env = get_ise_env()
    sd_flags = []
    for d in ip_dirs:
        sd_flags.extend(["-sd", d])

    commands = [
        {
            "name": "XST",
            "cmd": [
                os.path.join(bin_p, "xst"),
                "-intstyle",
                "ise",
                "-ifn",
                "top.xst",
                "-ofn",
                "top.syr",
            ],
        },
        {
            "name": "NGDBUILD",
            "cmd": [os.path.join(bin_p, "ngdbuild"), "-intstyle", "ise", "-dd", "_ngo"]
            + sd_flags
            + ["-nt", "timestamp", "-uc", ucf_file, "-p", DEVICE, "top.ngc", "top.ngd"],
        },
        {
            "name": "MAP",
            "cmd": [
                os.path.join(bin_p, "map"),
                "-intstyle",
                "ise",
                "-p",
                DEVICE,
                "-w",
                "-ol",
                "high",
                "-o",
                "top_map.ncd",
                "top.ngd",
                "top.pcf",
            ],
        },
        {
            "name": "PAR",
            "cmd": [
                os.path.join(bin_p, "par"),
                "-w",
                "-intstyle",
                "ise",
                "-ol",
                "high",
                "top_map.ncd",
                "top.ncd",
                "top.pcf",
            ],
        },
        {
            "name": "BITGEN",
            "cmd": [os.path.join(bin_p, "bitgen"), "-intstyle", "ise", "-w", "top.ncd"],
        },
    ]

    for step in commands:
        log(f"\n>>> STAGE: {step['name']}")
        try:
            subprocess.run(step["cmd"], cwd=BUILD_DIR, env=env, check=True)
        except subprocess.CalledProcessError:
            log(f"!!! Error at stage {step['name']}")
            return False

    return True


def do_release():
    """Step 3: Save the build result"""
    log(">>> [RELEASE] Copying bitstream...")
    bit_file = os.path.join(BUILD_DIR, f"{PROJECT_NAME}.bit")
    if os.path.exists(bit_file):
        if not os.path.exists(RELEASE_DIR):
            os.makedirs(RELEASE_DIR)
        ts = datetime.datetime.now().strftime("%Y%m%d_%H%M")
        shutil.copy(bit_file, os.path.join(RELEASE_DIR, f"{PROJECT_NAME}_{ts}.bit"))
        log(">>> Release ready.")
    else:
        log("!!! Bitstream not found.")


def main():
    parser = argparse.ArgumentParser(description="ISE Build System")

    # Mutually exclusive: --build, --rebuild, --all
    build_group = parser.add_mutually_exclusive_group()
    build_group.add_argument("--build", action="store_true", help="Build the project")
    build_group.add_argument(
        "--rebuild", action="store_true", help="Recreate project and build"
    )
    build_group.add_argument(
        "--all", action="store_true", help="Run all steps in order (build + release)"
    )

    # --release can accompany --build / --rebuild, but is implicit in --all
    parser.add_argument(
        "--release", action="store_true", help="Save the bitstream after build"
    )

    args = parser.parse_args()

    # If launched without arguments — print help
    if not any(vars(args).values()):
        parser.print_help()
        return

    setup_logging()

    success = False

    if args.all:
        success = do_build(rebuild=True)
    elif args.rebuild:
        success = do_build(rebuild=True)
    elif args.build:
        success = do_build(rebuild=False)
    else:
        # --release only, no build requested — assume bitstream already exists
        success = True

    if (args.all or args.release) and success:
        do_release()


if __name__ == "__main__":
    try:
        main()
    except subprocess.CalledProcessError as e:
        logging.error(f"\n!!! Error running external command: {e}")
    except KeyboardInterrupt:
        logging.info("\nProcess interrupted by user.")
