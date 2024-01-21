import os
import json
import hashlib
import platform
from downloader_cli.download import Download
import requests
import subprocess
import configparser
import tarfile

cfg = configparser.ConfigParser()
configfile = "femcfg.ini"
cfg.read(configfile)
dist_root = cfg["BOOTSTRAP"]["dist_root"]


def MessageHandler(message: str, type: int, default_action: int, debug_mode=False):
    """
    Message: Prints out a message while asking for input
    Type: Selects type, 1 for simple y/n, 2 for 1/2, 3 for normal message, 4 for debug message
    Default Action: 1 for Y/n, 2 for y/N (or *1*/2), 2 for y/N (or 1/*2* (** means default option))
    """
    match type:
        case 1:
            i = input(
                f"-> {message}, {'Y/n' if default_action == 1 else 'y/N'} "
            ).lower()
            match i:
                case "y":
                    return 1
                case "n":
                    return 2
                case _:
                    if default_action:
                        return 1
                    else:
                        return 2
        case 2:
            i = input(f"-> {message}, {'1/2' if default_action == 1 else '2/1'} ")
            match i:
                case "1":
                    return 1
                case "2":
                    return 2
                case _:
                    if default_action:
                        return 1
                    else:
                        return 2
        case 3:
            print(f"-> {message}")
            return 0
        case 4:
            if debug_mode == True:
                print(f"=> {message}")
            return 0


def GetConfigFempkg(key: str) -> str:
    cfg = configparser.ConfigParser()
    configfile = os.path.join(dist_root, "femcfg.ini")
    cfg.read(configfile)
    return cfg["FEMPKG"][key]


def GetConfigBootstrap(key: str) -> str:
    cfg = configparser.ConfigParser()
    configfile = os.path.join(dist_root, "femcfg.ini")
    cfg.read(configfile)
    return cfg["BOOTSTRAP"][key]


def GetPackageList(init: str) -> list:
    pkg_list_path = os.path.join(os.getcwd(), "packages", "package-list.json")

    with open(pkg_list_path, "r") as file:
        json_file = json.load(file)
        match init:
            case "systemd":
                packages = [
                    key
                    for key, value in json_file.get("LFS-Systemd", {}).items()
                    if "Priority" in value and value["Priority"]
                ]
            case "sysvinit":
                packages = [
                    key
                    for key, value in json_file.get("LFS-Sysvinit", {}).items()
                    if "Priority" in value and value["Priority"]
                ]
            case _:
                return []
        return packages


def GetPackageJson() -> dict:
    pkg_list_path = os.path.join(os.getcwd(), "packages", "package-list.json")
    with open(pkg_list_path, "r") as file:
        json_file = json.load(file)
    return json_file


def GetPackageCount(init: str) -> int:
    json_file = GetPackageJson()
    packages = [
        key
        for key, value in json_file.get(f"LFS-{init}", {}).items()
        if "Priority" in value and value["Priority"]
    ]
    return len(packages)


def UpdatePackages(json_file: dict, init: str):
    for key, value in json_file[f"LFS-{init}"].items():
        name = key
        version = value.get("Version", "")
        link = value.get("Link", "")
        priority = value.get("Priority", "")
        md5_checksum = value.get("MD5", "")
        if link:
            MessageHandler(
                f"Downloading package {name}", 4, 1, eval(GetConfigFempkg("debug"))
            )
            first_letter = name[0].upper()  # Assuming package names start with a letter
            pkgs_path = os.path.join(os.getcwd(), "packages", "src", first_letter, name)
            os.makedirs(pkgs_path, exist_ok=True)
            # Check if the file exists
            pkg_file = os.path.join(pkgs_path, os.path.basename(link))
            if os.path.exists(pkg_file):
                # Check MD5 checksum
                if md5_checksum:
                    with open(pkg_file, "rb") as file:
                        file_content = file.read()
                        checksum = hashlib.md5(file_content).hexdigest()
                        MessageHandler(
                            f"Checksum for {name}: {checksum} vs {md5_checksum}",
                            4,
                            1,
                            eval(GetConfigFempkg("debug")),
                        )
                        if checksum == md5_checksum:
                            # print(f"-> Package {name} is up to date.")
                            continue
                        else:
                            print(
                                f"-> MD5 checksum mismatch for {name}. Redownloading package..."
                            )
                            os.remove(pkg_file)
                else:
                    print(
                        f"-> MD5 checksum not provided for {name}. Redownloading package..."
                    )
                    os.remove(pkg_file)
            # Download the package with redirects handled
            Download(link, overwrite=True, des=pkg_file).download()


def MakePackage(package: str, pkg_dir: str, tarball: str):
    MessageHandler(f"Compiling package {package}", 3, 1)
    log_dir = os.path.join("packages/logs/", pkg_dir)
    src_dir = os.path.join("packages/src/", pkg_dir)
    script_dir = os.path.join("packages/scripts/", pkg_dir)

    os.chdir(src_dir)
    with tarfile.open(tarball) as file:
        MessageHandler(
            f"Extracting package {package}", 3, 1, eval(GetConfigFempkg("debug"))
        )
        file.extractall()
    log = open(os.path.join(os.getcwd(), "fempkg.log"), "w+")
    subprocess.call(["bash", "fempkg.sh"], stdout=log)
