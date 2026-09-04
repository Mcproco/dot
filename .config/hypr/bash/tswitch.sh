#!/usr/bin/env bash
#From the themes directory, list out themes through rofi
#Then, replace .target files
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
TARGET=$(ls $SCRIPT_DIR/../themes/ | rofi -dmenu -window-title "Theme")

if [[ -z "$TARGET" ]] then
    exit 0
fi

echo $TARGET > $SCRIPT_DIR/../target/theme
cp $SCRIPT_DIR/../themes/$TARGET/init.lua $SCRIPT_DIR/../target/init.lua
cp $SCRIPT_DIR/../themes/$TARGET/rofi.rasi ~/.config/rofi/config.rasi
ln -sf $SCRIPT_DIR/../themes/$TARGET/quickshell/shell.qml $SCRIPT_DIR/../target/shell.qml

WALLPAPERS=( $SCRIPT_DIR/../themes/$TARGET/wallpapers/* )
WALLPAPER=${WALLPAPERS[0]}

if [[ -z "$WALLPAPER" ]] then
    exit 0
fi

awww img --transition-type wipe "$WALLPAPER" --transition-fps 165
