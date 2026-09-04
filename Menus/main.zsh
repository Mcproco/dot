TARGET=$(ls -d ~/Menus/*/ | sed 's/\/*$//; s!.*/!!' | rofi -dmenu -window-title "Menus")

if [[ -z "$TARGET" ]] then
    exit 0
fi 

OPTION=$(ls -1 ~/Menus/$TARGET | sed 's/\.[a-z]*//g' | rofi -dmenu -window-title "$TARGET")

if [[ -z "$OPTION" ]] then
    exit 0
fi 

. "${0:A:h}/$TARGET/$OPTION.zsh"
