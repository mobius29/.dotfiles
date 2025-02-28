import os
import sys
import shutil
import subprocess
import platform
import argparse

system = platform.system()

if system == "Windows":
    print("Windows is not supported.")
    sys.exit(1)


parser = argparse.ArgumentParser(description="Dotfiles setup script")
parser.add_argument("--link-force", action="store_true", help="Force symlink creation")
args = parser.parse_args()

DOTFILES_ROOT = os.path.dirname(os.path.abspath(__file__))
SYMLINK_MAP = {
    "~/.zshrc": "configs/.zshrc",
    "~/.config/nvim": "nvim",
    "~/.gitconfig": "configs/.gitconfig",
    "~/.tmux.conf": "configs/.tmux.conf",
}

SYM_LINK_FORCE = args.link_force


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


def homebrew():
    if shutil.which("brew") is None:
        print_section("brew not Found. Installing Homebrew...")

        install_brew_cmd = '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
        execute_command(install_brew_cmd)
        execute_command("brew doctor")

    commands = [
        ["update"],
        ["tap", "homebrew/bundle"],
        ["bundle", f"--file={DOTFILES_ROOT}/Brewfile"],
        ["cleanup"],
    ]
    print_section("Installing Homebrew Packages")

    for cmd in commands:
        execute_command(" ".join(["brew", *cmd]))


def symlink():
    symlinked = []

    for dest, src in SYMLINK_MAP.items():
        src = os.path.join(DOTFILES_ROOT, src)
        dest = os.path.expanduser(dest)

        if os.path.exists(dest):
            if not SYM_LINK_FORCE:
                print(f"{dest} already exists. Skipping.")
                continue

            print(f"{dest} already exists. Removing.")
            os.remove(dest)

        isSrcDir = os.path.isdir(src)
        os.symlink(src, dest, target_is_directory=isSrcDir)
        symlinked.append(f"{src} -> {dest}")

    symlinked.sort()
    print("\n".join(symlinked))


def oh_my_zsh():
    omz_path = os.path.expanduser("~/.oh-my-zsh")
    if os.path.exists(omz_path):
        return

    print_section("Installing Oh My Zsh")
    command = 'sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
    execute_command(command)


if __name__ == "__main__":
    homebrew()
    oh_my_zsh()
    symlink()
