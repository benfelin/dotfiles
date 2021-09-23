DATETIME=`date '+%A %d %B %H:%M'`
#UPTIME=`uptime | sed 's/.*up\s*//' | sed 's/,\s*[0-9]* user.*//' | sed 's/  / /g'`
VOLUME=$(amixer sget Master | tail -1 | sed 's/Mono: Playback [0-9]* \[\(.*\)\] \[.*\] \[\(.*\)\]$/\1 \2/' | sed 's/off/M/' | sed 's/on //' )
BATTERYSTATE=$( acpi -b | awk '{ split($5,a,":"); print substr($3,0,2), $4, "["a[1]":"a[2]"]" }' | tr -d ',' )
#xsetroot -solid gray40 -name "${VOLUME} | ${DATETIME} | Up ${UPTIME}h | ${BATTERYSTATE}"
xsetroot -solid gray40 -name "${VOLUME} | ${DATETIME} | ${BATTERYSTATE}"
