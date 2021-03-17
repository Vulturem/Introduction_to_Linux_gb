#!/bin/bash
owner=$(ls -Fl |grep -v "\/"| cut -d " " -f3)
#echo owner = $owner

for own in $owner
do
	mkdir $own 2> /dev/null
	file=$(find . -maxdepth 1 -type f -user $own | grep -v "$0")
#	echo file1 = $file
	if [[ -n $file ]]
	then
			for i in $file
			do
			y=$(echo $i |cut -d "/" -f2 )
				if [[ -f  $own/$y ]]
				then
				echo file with this name: $i already exist 'in' $own directory
				echo New name will be:
				l="$y"_$RANDOM
				echo $l
#				echo y=$y l=$l
				mv $y $own/$l
				else
				echo file2 = $y
				mv $y $own/$y 2> /dev/null
				fi
			done
	else
	echo There\'s no more files to migrate
	exit 15
	fi
#echo there\' no more files to migrate
done
