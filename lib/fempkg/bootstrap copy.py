import os
import json
import hashlib
from lib.fempkg.errorhandling import error
from downloader_cli.download import Download
import requests
import subprocess
import platform


def Update(repository: str, debug: bool):
    print("-> Reading config file")
    with open("config.txt", "rb") as config:
        cfg = config.read()
        print()
    print("-> Updating FemboyOS's package list.")

    # Gets the package list location
    pkg_list_path = os.path.join(os.getcwd(), "packages", "package-list.json")

    # Requests the package list file
    listrepository = f"{repository}/package-list.json"
    # Download(listrepository, pkg_list_path)
    print("-> Done!")

    # Gets all packages
    with open(pkg_list_path, "r") as file:
        json_file = json.load(file)

    packages = [
        key
        for key, value in json_file.get("LFS", {}).items()
        if "Priority" in value and value["Priority"]
    ]

    print(f"-> Downloading {len(packages)} packages:")
    print(f"{', '.join(packages)}")

    i = input(f"Continue? Y/n ")
    match i:
        case "y":
            print("-> Continuing...")
        case "n":
            print("-> !! Exiting.")
            return 1
        case _:
            print("-> Continuing...")

    for key, value in json_file["LFS"].items():
        name = key
        version = value.get("Version", "")
        link = value.get("Link", "")
        priority = value.get("Priority", "")
        md5_checksum = value.get("MD5", "")
        check_and_redownload(repository, name, version, debug)
        if link and priority:
            print_debug(f"-> Downloading package {name}", debug)
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
                        if checksum == md5_checksum:
                            # print(f"-> Package {name} is up to date.")
                            continue
                        else:
                            print(
                                f"-> MD5 checksum mismatch for {name}. Redownloading package..."
                            )
                else:
                    print(
                        f"-> MD5 checksum not provided for {name}. Redownloading package..."
                    )
            # Download the package with redirects handled
            Download(link, overwrite=True, des=pkg_file).download()

            # Check MD5 checksum after redownloading
            with open(pkg_file, "rb") as file:
                file_content = file.read()
                checksum = hashlib.md5(file_content).hexdigest()
                if checksum == md5_checksum:
                    pass
                else:
                    print(
                        f"-> !! MD5 checksum verification failed the 2nd time for {name}. Either the server is doing something weird, the downloader is failing or other errors."
                    )
                    print(f"-> !! Expected: {md5_checksum}, got {checksum}")
                    i = input("Would you like to continue? y/N ").lower()

                    match i:
                        case "y":
                            print("-> Continuing...")
                        case "n":
                            print("-> !! Exiting.")
                            return 1
                        case _:
                            print("-> !! Exiting.")
                            return 1
        else:
            print_debug(f"-> Package {name} doesn't need to be downloaded.", debug)
            pass
    print("-> Done downloading all packages, preparing the install environment.")
    os_name = platform.system()
    if os_name == "Linux" or os_name == "Darwin":
        packages_sorted = sorted(
            packages, key=lambda x: json_file["LFS"][x]["Priority"]
        )
        for item in packages_sorted:
            print(f"-> Installing {item}...")
            first_letter = item[0].upper()
            fempkg = os.path.join(
                os.getcwd(),
                "packages",
                "scripts",
                "LFS",
                first_letter,
                item,
                "fempkg.sh",
            )
            print(fempkg)
            compile = subprocess.run(["bash", fempkg], capture_output=True, text=True)
            print("Return Code:", compile.returncode)
    else:
        print(f"-> !! Unsupported OS, found {os_name}")


def check_and_redownload(repository, package, version, debug):
    local_version = get_version(package, version, debug)
    if local_version == version:
        return

    print(
        f"-> !! Package script for {package} ({local_version}) doesn't match the package version {version}! Redownloading package..."
    )

    url = f"{repository}/packages/scripts/lfs/{package[0]}/{package}/fempkg.sh"
    r = requests.get(url, allow_redirects=True)

    if not r.content:
        error("fatal_package_download_error")
    if "404" in str(r):
        error("404")


def get_version(package: str, version: str, debug: bool):
    import os

    package_file = (
        f"{os.getcwd()}/packages/scripts/lfs/{package[0]}/{package}/fempkg.sh"
    )
    try:
        return f"{open(package_file).read()[2:]}"
    except FileNotFoundError:
        print(f"-> !! {package} package_file not found.")
        try:
            f = open(package_file, "w")
        except FileNotFoundError:
            try:
                os.makedirs(package_file[:-9])
            except FileExistsError:
                pass
            # f = open(package_file, "w")
            # f.write(f"# {version}")
            # f.close()


def print_debug(string: str, debug: bool):
    if debug:
        print(f"(d) {string}")
