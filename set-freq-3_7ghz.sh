#!/bin/bash

echo "Setting CPU Frequencies and Scheduler Parameters"

echo "Setting RT Runtime to -1 (No Limit)"
echo "echo \"-1\" > /proc/sys/kernel/sched_rt_runtime_us"
echo "-1" > /proc/sys/kernel/sched_rt_runtime_us

echo "Disabling IRQ Balance"
echo "systemctl stop irqbalance"
systemctl stop irqbalance

echo "Disabling CPU Boost"
echo "echo \"0\" > /sys/devices/system/cpu/cpufreq/boost"
echo "0" > /sys/devices/system/cpu/cpufreq/boost

#Get the number of virtual CPUs
cpus=$(lscpu | grep "^CPU(s)" | sed -r -e 's/CPU[(]s[)][:]\s*([0-9]+)/\1/')

if [[ -z cpus ]]; then
	echo "Unable to identify the number of CPU cores!"
	cpus=64
	echo "Defaulting to ${cpus}"
fi

lastCore=$(( ${cpus}-1 ))

echo "Setting CPU Frequency CPUs 0-${lastCore}"
for i in $(seq 0 ${lastCore}); do
	echo "cpufreq-set -c $i -f 3.7GHz"
	cpufreq-set -c $i -f 3.7GHz
done;
