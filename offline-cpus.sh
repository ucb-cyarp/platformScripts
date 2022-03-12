#!/bin/bash

echo "Bringing Isolated CPUs Offline"

#Get the number of virtual CPUs
cpus=$(lscpu | grep "^CPU(s)" | sed -r -e 's/CPU[(]s[)][:]\s*([0-9]+)/\1/')

if [[ -z cpus ]]; then
	echo "Unable to identify the number of CPU cores!"
	cpus=64
	echo "Defaulting to ${cpus}"
fi

lastCore=$(( ${cpus}-1 ))

#Assumeing OS cores grouped at lower CPU numbers
#Do not offline/online OS CPUs
echo "Offline Cores 1-${lastCore}:"
for i in $(seq 1 ${lastCore}); do
	echo "echo \"0\" > /sys/devices/system/cpu/cpu$i/online"
	echo "0" > /sys/devices/system/cpu/cpu$i/online
done;
