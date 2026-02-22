#!/usr/bin/env python3
import subprocess
import os

windows_path = os.path.dirname(os.path.abspath(__file__))
script_name = "sakura"

drive = windows_path[0].lower()  # 'c'
path_without_drive = windows_path[2:].replace("\\", "/")
wsl_path = f"/mnt/{drive}/{path_without_drive}"

bash_command = f"cd '{wsl_path}' && bash {script_name}"

subprocess.run(["wsl.exe", "bash", "-c", bash_command])