#!/bin/bash

echo "Bringing Isolated CPUs Offline"

for i in {1..63}; do
	echo "echo \"0\" > /sys/devices/system/cpu/cpu$i/online"
	echo "0" > /sys/devices/system/cpu/cpu$i/online
done;
