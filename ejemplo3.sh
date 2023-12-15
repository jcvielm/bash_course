#!/bin/bash
total=1
while [ -n "$1" ]; do # while loop starts
	echo "#$total = $1"
	total=$(($total + 1))
	shift
done
