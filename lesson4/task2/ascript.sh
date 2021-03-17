#bin/bash
for (( x = 1; x <= $((1+ RANDOM % 10)); x++))
do
mkdir 00$x
cd 00$x
touch 00$x.txt
echo file00$x >> 00$x.txt
cd ..
done
