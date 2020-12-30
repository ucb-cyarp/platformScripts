#!/bin/bash

echo "Bringing Isolated CPUs Online"

for i in {1..63}; do
echo "echo \"1\" > /sys/devices/system/cpu/cpu$i/online"
echo "1" > /sys/devices/system/cpu/cpu$i/online
done;
