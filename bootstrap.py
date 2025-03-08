import os
import platform
import subprocess
import sys
import shutil
import argparse

# ----------------------------- constants ------------------------------
DOTFILES_ROOT = os.path.dirname(os.path.abspath(__file__))
BREW_COMMANDS = [
    ["update"],
    ["tap", "homebrew/bundle"],
    ["bundle", f"--file={DOTFILES_ROOT}/Brewfile"],
    ["cleanup"],
]
SYMLINK_MAP = {
    "~/.zshrc": "configs/.zshrc",
    "~/.config/nvim": "nvim",
    "~/.gitconfig": "configs/.gitconfig",
    "~/.tmux.conf": "configs/.tmux.conf",
}

# --------------------------- constants end -------------------------------


# ----------------------------- utils ----------------------------------
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


def parse_arguments():
    parser = argparse.ArgumentParser(description="Dotfiles setup script")
    parser.add_argument(
        "-f",
        "--force",
        action="store_true",
        help="Force the installation of a package or creation a symbolic link",
    )

    return parser.parse_args()


def continue_section(input_msg: str, skipped_msg: str):
    is_continue = input(input_msg + " [y/N]: ")
    while is_continue.lower() not in ["y", "n"]:
        is_continue = input("Please enter 'y' or 'n': ")

    if is_continue.lower() == "n":
        print(skipped_msg)
        return False

    return True


# --------------------------- utils end --------------------------------


if __name__ == "__main__":
    system = platform.system()

    # Check if the system is Windows
    if system == "Windows":
        print("Windows is not supported.")
        sys.exit(1)

    args = parse_arguments()

    # Install Homebrew and packages
    if continue_section(
        "Do you want to install Homebrew and packages?",
        "Skipping Homebrew installation",
    ):
        if shutil.which("brew") is None:
            print_section("brew not Found. Installing Homebrew...")
            execute_command(
                '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
            )
            execute_command("brew doctor")

        print_section("Installing Homebrew Packages")
        for cmd in BREW_COMMANDS:
            execute_command(" ".join(["brew", *cmd]))

    # Install Oh My Zsh
    if continue_section(
        "Do you want to install Oh My Zsh?",
        "Skipping Oh My Zsh installation",
    ):
        omz_path = os.path.expanduser("~/.oh-my-zsh")
        if os.path.exists(omz_path):
            print("Oh My Zsh is already installed.")

            if continue_section(
                "Do you want to reinstall Oh My Zsh?",
                "Skipping Oh My Zsh reinstallation",
            ):
                print_section("Installing Oh My Zsh")
                execute_command(
                    'sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
                )

    # Create symbolic links
    if continue_section(
        "Do you want to create symbolic links?",
        "Skipping symbolic link creation",
    ):
        symlinked = []

        for dest, src in SYMLINK_MAP.items():
            src = os.path.join(DOTFILES_ROOT, src)
            dest = os.path.expanduser(dest)

            if os.path.exists(dest):
                if not args.force:
                    print(f"{dest} already exists. Skipping.")
                    continue

                print(f"{dest} already exists. Removing.")
                os.remove(dest)

            isSrcDir = os.path.isdir(src)
            os.symlink(src, dest, target_is_directory=isSrcDir)
            symlinked.append(f"{src} -> {dest}")

        symlinked.sort()
        print("\n".join(symlinked))

    print_section("Done")
