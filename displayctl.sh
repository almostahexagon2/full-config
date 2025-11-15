#!/bin/bash

case $(echo -e 'Add Monitor\nRemove Monitor\nExit' | dmenu -p "Xo paju ex?") in
	"Add Monitor")
		xrandr --output $(xrandr | grep " connected " | dmenu -p "Which Monitor" -l 3 | awk '{print $1}') --auto --$(echo -e "above\nleft-of\nright-of\nbelow"| dmenu -p "Where") $(xrandr | grep " connected" | dmenu -l 5 | awk '{print $1}') 
	;;
	"Remove Monitor")
		xrandr --output $(xrandr | grep " connected " | dmenu -p "Remove What Monitor?" | awk '{print $1}') --off
	;;
esac
