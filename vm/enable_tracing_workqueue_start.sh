#!/bin/bash

echo workqueue:workqueue_execute_start | sudo tee /sys/kernel/debug/tracing/set_event
