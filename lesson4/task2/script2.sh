#!/bin/bash

# $i = счетчик лет
# $j = счетчик месяцев

path=$( pwd )

for ((i=2010; i <= 2020; i++))
	do
	mkdir $i
	for ((j=1; j<=12; j++))
		do
		cd $i
		mkdir $j
		cd $j
			for (( x = 1; x <= $((1+ RANDOM % 10)); x++))
			do
			touch 00$x.txt
			echo file00$x >> 00$x.txt
			done
		cd $path/
		done
	done
