#/bin/bash

#[tags][windows][volume,cpu,ram,battery,date]

while true 
do

MEM=$(free -h | grep "^Mem:" | awk '{print $3 "/" $2}')
BAT_PERCENT=$(cat /sys/class/power_supply/BAT1/capacity)

case $(cat /sys/class/power_supply/AC/online) in

	1)
		CHR_STATUS="CHR"
	;;
	0)
		CHR_STATUS="BAT"
	;;
esac
	
DAT=$(date +"%a, %F %H:%M:%S") 
PWR_DRAW=$(awk '{print $1*10^-6 "W"}' /sys/class/power_supply/BAT1/power_now)

xsetroot -name "$MEM | $DAT | $BAT_PERCENT% $CHR_STATUS $PWR_DRAW"
sleep 5

done
