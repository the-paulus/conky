#!/bin/bash

SENSORS=$(which sensors)

if [ $# -ne 0 ]
then
	$SENSORS | grep "$1" | awk '{print $3}' | cut -d'+' -f2
else
	$SENSORS | grep '\(Physical\|Core\)' | sed 's/Physical id \([0-9]\)*:/PCPU \1:/' | tr -d "+" | awk '{print " " $1 " " $2 " " $3}'
fi
