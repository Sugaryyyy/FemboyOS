def error(error: str):
    match error:
        case "404":
            print(f"-> !! Failed with error code {error}")
        case "fatal_package_download_error":
            print(
                f"-> !! Failed to redownload package! Something has gone terribly wrong with the repository, please redownload."
            )
