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

echo "Setting CPU Frequency"
for i in {0..31}; do
	echo "cpufreq-set -c $i -f 3GHz"
	cpufreq-set -c $i -f 3GHz
done;
