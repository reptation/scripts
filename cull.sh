#!/bin/bash
signal=$2

if [ "$#" -gt 2 ]; then
    echo "rlykill takes at most 2 args"
    exit 1
fi

if [ "$#" -eq 2 ]; then
    echo "terminating $1 with signal $2"
fi

if [ "$#" -eq 1 ]; then
	echo "terminating $1 with signal 15"
	signal=15
fi

if [ "$#" -eq 0 ]; then
	echo "provide process name and optional signal"
	exit 0
fi

echo "signal = $signal"

for p in $(pidof $1); do
	echo pidof $1: $p
	sudo kill -$signal $p
done 

