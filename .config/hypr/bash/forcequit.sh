DATA=$(hyprctl clients -j)
OPTIONS=""
while read -r item; do

    pid=$(echo "$item" | jq -r '.pid')
    name=$(echo "$item" | jq -r '.class')
    title=$(echo "$item" | jq -r '.title')

    OPTIONS="$OPTIONS[$pid] ${name^} - $title\n"

done <<< $(echo $DATA | jq -c '.[]')
OPTIONS=${OPTIONS:0:-2}

RESULT=$(echo -e "$OPTIONS" | rofi -dmenu -i -window-title "SIGKILL")
RESULT=($RESULT)

if [[ -z "$RESULT" ]]; then
    exit 0
fi

kill -9 ${RESULT[0]:1:-1}
