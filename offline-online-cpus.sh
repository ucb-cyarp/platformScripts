#!/bin/bash

#This is following the suggestion from https://www.kernel.org/doc/Documentation/kernel-per-CPU-kthreads.txt to reduce OS jitter by offlining and onling CPUs to move timers

./offline-cpus.sh
./online-cpus.sh
