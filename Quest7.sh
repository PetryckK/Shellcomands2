#!/bin/bash

for ((c=$1; c<=$2; c++)) do
	if [ $(( c%2 )) -eq 0 ]
	then
		echo "$c"
	fi
done