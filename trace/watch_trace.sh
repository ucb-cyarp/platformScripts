#!/bin/bash

tail -F out.txt | grep -E "\[004\]|\[005\]|kworker/4|kworker/5|cpu=4$|cpu=5$"
