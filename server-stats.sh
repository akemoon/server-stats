#!/bin/bash

cpu=$(vmstat 1 2 |tail -1 |awk '{print 100-$15 "%"}')
mem=$(free --mega |awk '/Mem/ {printf "%d%% (%sMB/%sMB)",($3/$2*100+0.5),$3,$2}')
disk=$(df -h --total |awk '/total/ {printf "%s (%s/%s)",$5,$3,$2}')

echo
echo "---------\ SERVER STATS"
echo

echo " > Uptime: $(uptime -p)"
echo

echo " > CPU usage: $cpu"
echo

echo " > Memory usage: $mem"
echo

echo " > Disk usage: $disk"
echo

echo " > Top 5 by CPU usage:"
ps -eo user,pid,%cpu,comm --sort -%cpu |head -6 |awk '{print "   "$0}'
echo

echo " > Top 5 by memory usage:"
ps -eo user,pid,%mem,comm --sort -%mem |head -6 |awk '{print "   "$0}'
echo
