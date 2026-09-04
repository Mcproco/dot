TIME=$(rofi -dmenu -lines 0 -window-title "Set Time"); if [[ -z "$TIME" ]] then exit 0; fi 
TITLE=$(rofi -dmenu -window-title "Set Title"); if [[ -z "$TITLE" ]] then exit 0; fi 
kitty tclock -c "White" timer -d $TIME -t $TITLE -P -M
