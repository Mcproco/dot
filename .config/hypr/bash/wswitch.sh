#!/usr/bin/env bash

IMG_PICKER_CONFIG="$HOME/.config/hypr/themes/kshark/wallpaper.rasi"
WALLPAPER_DIR="$HOME/Pictures/Wallpapers/"
WALLPAPER_FILES=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \))
ROFI_MENU=""

while IFS= read -r WALLPAPER_PATH; do
    WALLPAPER_NAME=$(basename "$WALLPAPER_PATH")
    ROFI_MENU+="${WALLPAPER_NAME}\0icon\x1f${WALLPAPER_PATH}\n"
done<<<"$WALLPAPER_FILES"

TARGET=$(echo -e "$ROFI_MENU" | rofi -dmenu -p "Wallpaper: " -theme "$IMG_PICKER_CONFIG" -markup-rows)

if [[ -z "$TARGET" ]] then
    exit 0
fi

awww img "/home/Mark/Pictures/Wallpapers/$TARGET" --transition-type wipe --transition-fps 165
