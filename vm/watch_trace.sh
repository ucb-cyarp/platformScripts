#!/bin/bash

tail -F out.txt | grep -E "kworker/4|kworker/5|cpu=4$|cpu=5$"
