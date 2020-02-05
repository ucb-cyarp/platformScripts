#!/bin/bash

echo workqueue:workqueue_queue_work | sudo tee /sys/kernel/debug/tracing/set_event
