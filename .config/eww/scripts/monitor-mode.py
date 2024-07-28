#!/bin/python

import sys

arg = sys.argv[1]

config = open("/home/auri/.config/hypr/hyprland.conf", "r")

if arg == "mirror":
    lines = config.readlines()
    if lines[4][0] == "#" and lines[7][0] != "#":
        lines[4] = lines[4][1:]
        lines[7] = f"#{lines[7]}"
        print(lines[4])
        with open("/home/auri/.config/hypr/hyprland.conf", "w") as wconfig:
            wconfig.writelines(lines)

elif arg == "ultrawide":
    lines = config.readlines()
    if lines[4][0] != "#" and lines[7][0] == "#":
        lines[7] = lines[7][1:]
        lines[4] = f"#{lines[4]}"
        print(lines[7])
        with open("/home/auri/.config/hypr/hyprland.conf", "w") as wconfig:
            wconfig.writelines(lines)

config.close()
