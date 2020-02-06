#!/bin/bash
echo "00000000,00000000,00000000,00000030" > /sys/kernel/debug/tracing/tracing_cpumask #Collect Only CPU 4 and 5

echo "timer:timer_init" > /sys/kernel/debug/tracing/set_event
echo "timer:timer_start" >> /sys/kernel/debug/tracing/set_event
echo "timer:timer_expire_entry" >> /sys/kernel/debug/tracing/set_event
echo "timer:timer_expire_exit" >> /sys/kernel/debug/tracing/set_event
echo "timer:timer_cancel" >> /sys/kernel/debug/tracing/set_event
echo "timer:itimer_state" >> /sys/kernel/debug/tracing/set_event
echo "timer:itimer_expire" >> /sys/kernel/debug/tracing/set_event

