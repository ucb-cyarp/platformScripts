#!/bin/bash
echo "00000000,00000000,00000000,00000030" > /sys/kernel/debug/tracing/tracing_cpumask #Collect Only CPU 4 and 5

echo "timer:*" | sudo tee /sys/kernel/debug/tracing/set_event
