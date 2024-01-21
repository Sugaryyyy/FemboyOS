import subprocess
import os

def dep_check():
    r = subprocess.run(["bash", os.path.join(os.getcwd(), "dep-check.sh")], capture_output=True, text=True)
    print(r.stdout[:-1])