import subprocess
import sys


def print_section(title: str):
    print(f"\n{'=' * 10} {title} {'=' * 10}\n")


def execute_command(command: str):
    process = subprocess.Popen(
        command,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        shell=True,
        executable="/bin/bash",
    )
    stdout, stderr = process.communicate()

    if stdout:
        print(stdout.decode("utf-8"))

    if process.returncode != 0:
        print(f"Error: {stderr.decode('utf-8')}")
        sys.exit(1)
