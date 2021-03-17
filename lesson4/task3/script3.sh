#!/bin/bash

user=$(cat /etc/passwd | cut -d ":" -f1)
#echo $user
for user_l in $user
do
	size=$(du -hc /home/$user_l 2> /dev/null | grep "total" | cut -f1)
		if [[ $size > 0 ]]
		then
		DATE=$(date)
		#file=/home/share/file
		#echo $DATE #>> $file
		echo 
		echo =====Start of $user_l"'s" information=====
		echo at $DATE size of $user_l"'s" home-dir is $size
		echo ======End of $user_l"'s" information======
		echo
		fi
done
