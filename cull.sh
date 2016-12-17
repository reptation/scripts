#!/bin/bash
signal=$2
proc=$1
while getopts ":h" opt; do
	case $opt in
		h)
		  echo "./cull.sh <process_name> [<signal_number>]" >&2
		  echo "\nwith no args cull terminates chrome browser"
		  exit 0
		  ;;
		\?)
		  echo "Unknown arg: -$OPTARG" >&2
		  exit 1
		  ;;
	esac
done

if [ "$#" -gt 2 ]; then
    echo "cull takes at most 2 args"
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
#	echo "provide process name and optional signal"
	echo "killing chrome browser with signal 15"
	proc='chrome'
	signal=15
#	exit 0
fi



echo "signal ="$signal","$proc

for p in $(pidof $proc); do
	echo pidof $proc: $p
	sudo kill -$signal $p
done 

exit 0
