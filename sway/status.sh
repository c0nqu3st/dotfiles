format_date=$(date +'%a, %b %d %I:%M %p')
format_kernal=$(uname -r | cut -d '-' -f1)
format_uptime=$(uptime | cut -b 1-10)

muted=$(pulsemixer --get-mute)
if test "$muted" = '0'; then
    volume=$(pulsemixer --get-volume | cut -b 1-3)
else
    volume=$(echo 'x')
fi

check_weather=$()
check_updates=$(checkupdates | wc -l)

if test "$check_updates" != '0'; then
    echo  updates: $check_updates // uptime: $format_uptime // kernal: $format_kernal // volume: $volume // $format_date
else
    echo uptime: $format_uptime // kernal: $format_kernal // volume: $volume // $format_date
fi
