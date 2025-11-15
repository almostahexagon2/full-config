#!/bin/bash

drive=$(lsblk -lp | grep "part $" | awk '{print $1 " ("$4")"  }' | dmenu -p "What do you want to mount?")


pmount $drive

notify-send "mounted $drive"
