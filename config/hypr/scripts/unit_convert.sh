#!/usr/bin/env bash

theme="$HOME/.config/rofi.bak/launchers/type-2/style-1.rasi"

while true; do
    input=$(rofi -dmenu -p "Convert" -filter "" -theme "$theme")

    [[ -z "$input" ]] && exit 0

    result=$($HOME/.local/bin/unit-convert "$input" 2>&1)

    rofi -e "$result" -theme "$theme"
done
