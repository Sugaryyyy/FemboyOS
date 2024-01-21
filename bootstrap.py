# Basic bootstrapper for FemboyOS.
import os
import argparse
import pathlib
from lib.fempkg.bootstrap import *
from lib.fempkg.dep_check import dep_check
import platform
import configparser

# Argument parser

parser = argparse.ArgumentParser()
parser.add_argument(
    "-s",
    "--silent",
    help="Enables silent mode (disables output from compiler)",
    action="store_true",
)

parser.add_argument(
    "directory",
    help="Sets the output directory (default is ./build_root/)",
    nargs="?",
    default=os.getcwd() + "/build_root",
    type=pathlib.Path,
)

parser.add_argument(
    "-d",
    "--debug",
    help="Enables debug mode",
    action="store_true",
    default=False,
)

args = parser.parse_args()

# Parse the silent argument

if args.silent:
    silent = True
else:
    silent = False
# Parse the filename argument

output_dir = args.directory.resolve()

# Debug mode

if args.debug:
    print("-> Debug mode enabled!")
    debug_mode = True
else:
    debug_mode = False
# Start the bootstrapping

i = input("Would you like to use Systemd (1) (default) or Sysvinit (2)? 1/2: ")
match i:
    case "1":
        print("-> Using systemd as init.")
        init = "systemd"
    case "2":
        print("-> Using sysvinit as init.")
        init = "sysvinit"
    case _:
        print("-> Using systemd as init.")
        init = "systemd"

os_name = platform.system()
if os_name == "Linux":
    print(f"-> Running dependency check.")
    dep_check()
else:
    print(
        f"Unsupported OS, found {os_name}. Only downloading the packages is supported. Please use Linux if you want to compile FemboyOS. Any issues reported while compiled with Windows will be ignored."
    )
    i = input("Do you want to continue? y/N ")
    match i:
        case "y":
            print("-> Continuing...")
        case "n":
            print("-> !! Exiting.")
            exit()
        case _:
            print("-> !! Exiting.")
            exit()
print("-> Writing current config.")

cfg = configparser.ConfigParser()
cfg["FEMPKG"] = {"Silent": str(silent), "Debug": str(debug_mode)}
cfg["BOOTSTRAP"] = {"Target": output_dir, "Dist_root": os.getcwd(), "Init": init}
with open("femcfg.ini", "w") as configfile:
    cfg.write(configfile)


print(f"-> Bootstrapping to `{output_dir}`")
MessageHandler(f"Downloading {GetPackageCount(init)} packages:", 1, 1, debug_mode)
UpdatePackages(GetPackageJson(), init)
