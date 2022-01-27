while true
do
  battery_level=`sysctl hw.acpi.battery.life | awk '{print $2}'`
  battery_state=`sysctl hw.acpi.battery.state | awk '{print $2}'`
  if [ $battery_level -ge 80 -a  $battery_state -eq 2 ]; then
      notify-send --urgency=LOW "Battery Full" "Level: ${battery_level}%"
      mpv /usr/local/share/sounds/freedesktop/stereo/suspend-error.oga
  elif [ $battery_level -le 40 -a $battery_state -eq 1 ]; then
      notify-send --urgency=CRITICAL "Battery Low" "Level: ${battery_level}%"
      mpv --volume=50 /usr/local/share/sounds/freedesktop/stereo/suspend-error.oga
  fi
 sleep 60
done
