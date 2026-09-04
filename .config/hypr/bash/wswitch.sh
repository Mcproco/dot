#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
THEMES_DIR=$SCRIPT_DIR/../themes
THEME_NAME=$(cat $SCRIPT_DIR/../target/theme)
#TARGET=$(ls $THEMES_DIR/$THEME_NAME/wallpapers/ | rofi -dmenu)
TARGET=$(ls ~/Pictures/Wallpapers/ | rofi -dmenu -window-title "Wallpaper")

if [[ -z "$TARGET" ]] then
    exit 0
fi

awww img "/home/Mark/Pictures/Wallpapers/$TARGET" --transition-type wipe --transition-fps 165
