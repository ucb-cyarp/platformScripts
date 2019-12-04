#!/bin/bash

awk 'FNR<=1 { print $7, $11}' $1
awk 'FNR>1 { print $7, $11}' $1 | sort -n
