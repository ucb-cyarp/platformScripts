#!/bin/bash

echo "-1" > /proc/sys/kernel/sched_rt_runtime_us

systemctl stop irqbalance

echo "0" > /sys/devices/system/cpu/cpufreq/boost

cpufreq-set -c 0 -f 3GHz
cpufreq-set -c 1 -f 3GHz
cpufreq-set -c 2 -f 3GHz
cpufreq-set -c 3 -f 3GHz
cpufreq-set -c 4 -f 3GHz
cpufreq-set -c 5 -f 3GHz
cpufreq-set -c 6 -f 3GHz
cpufreq-set -c 7 -f 3GHz
cpufreq-set -c 8 -f 3GHz
cpufreq-set -c 9 -f 3GHz
cpufreq-set -c 10 -f 3GHz
cpufreq-set -c 11 -f 3GHz
cpufreq-set -c 12 -f 3GHz
cpufreq-set -c 13 -f 3GHz
cpufreq-set -c 14 -f 3GHz
cpufreq-set -c 15 -f 3GHz
cpufreq-set -c 16 -f 3GHz
cpufreq-set -c 17 -f 3GHz
cpufreq-set -c 18 -f 3GHz
cpufreq-set -c 19 -f 3GHz
cpufreq-set -c 20 -f 3GHz
cpufreq-set -c 21 -f 3GHz
cpufreq-set -c 22 -f 3GHz
cpufreq-set -c 23 -f 3GHz
cpufreq-set -c 24 -f 3GHz
cpufreq-set -c 25 -f 3GHz
cpufreq-set -c 26 -f 3GHz
cpufreq-set -c 27 -f 3GHz
cpufreq-set -c 28 -f 3GHz
cpufreq-set -c 29 -f 3GHz
cpufreq-set -c 30 -f 3GHz
cpufreq-set -c 31 -f 3GHz
#cpufreq-set -c 32 -f 3GHz
#cpufreq-set -c 33 -f 3GHz
#cpufreq-set -c 34 -f 3GHz
#cpufreq-set -c 35 -f 3GHz
#cpufreq-set -c 36 -f 3GHz
#cpufreq-set -c 37 -f 3GHz
#cpufreq-set -c 38 -f 3GHz
#cpufreq-set -c 39 -f 3GHz
#cpufreq-set -c 40 -f 3GHz
#cpufreq-set -c 41 -f 3GHz
#cpufreq-set -c 42 -f 3GHz
#cpufreq-set -c 43 -f 3GHz
#cpufreq-set -c 44 -f 3GHz
#cpufreq-set -c 45 -f 3GHz
#cpufreq-set -c 46 -f 3GHz
#cpufreq-set -c 47 -f 3GHz
#cpufreq-set -c 48 -f 3GHz
#cpufreq-set -c 49 -f 3GHz
#cpufreq-set -c 50 -f 3GHz
#cpufreq-set -c 51 -f 3GHz
#cpufreq-set -c 52 -f 3GHz
#cpufreq-set -c 53 -f 3GHz
#cpufreq-set -c 54 -f 3GHz
#cpufreq-set -c 55 -f 3GHz
#cpufreq-set -c 56 -f 3GHz
#cpufreq-set -c 57 -f 3GHz
#cpufreq-set -c 58 -f 3GHz
#cpufreq-set -c 59 -f 3GHz
#cpufreq-set -c 60 -f 3GHz
#cpufreq-set -c 61 -f 3GHz
#cpufreq-set -c 62 -f 3GHz
#cpufreq-set -c 63 -f 3GHz
