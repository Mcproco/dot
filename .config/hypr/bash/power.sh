modes=("Sleep" "Off" "Logout")
option=$(printf "%s\\n" "${modes[@]}" | rofi -dmenu -window-title "Power")

power() {
    poweroff
}

swap() {
	systemctl suspend
}

log() {
    hyprctl dispatch 'hl.dsp.exit()'
}

if [[ -z "$option" ]]; then
    exit 0
fi

case "$option" in
	"${modes[0]}")
		$(swap)
		;;
	"${modes[1]}")
		$(power)
		;;
    "${modes[2]}")
        $(log)
        ;;
	*)
        exit 0
		;;
esac
