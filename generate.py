#!/usr/bin/python3

from pathlib import Path
from os import getenv
from shutil import copy, copytree, rmtree

HOME = Path(getenv("HOME"))

TARGETCONFIG = Path("config")
TARGETSCRIPTS= Path("scripts")

source_files = [
    ".zshrc",
    ".gitconfig",
    ".tmux.conf",
    ".Xprofile",
    ".Xresources",
    ".zshenv",
    ".zshrc",
]

# Folders inside ~/.config
source_inner_config = [
    "alacritty",
    "i3",
    "mpd",
    "ncmpcpp",
    "nvim",
    "picom",
    "polybar",
    "rofi",
    "wal",
    "zathura",
]

source_scripts = "scripts"

def main():
    for file in source_files:
        target = TARGETCONFIG.joinpath(file)

        copy(HOME.joinpath(file), target)
    for file in source_inner_config:
        target = TARGETCONFIG.joinpath(file)
        if target.exists():
            rmtree(target)
        copytree(HOME.joinpath('.config',file),target)
#    copytree(HOME/source_scripts, TARGETSCRIPTS)

if __name__ == "__main__":
    main()
