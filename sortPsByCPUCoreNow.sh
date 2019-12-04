#!/bin/bash

TMP=`ps -e -F`
echo "$TMP" | awk 'FNR<=1 { print $7, $2, $11}'
echo "$TMP" | awk 'FNR>1 { print $7, $2, $11}' | sort -n
