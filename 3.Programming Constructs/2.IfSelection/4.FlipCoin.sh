
#!/bin/bash

heads=1
tails=0
generateHT=$((RANDOM%2))
if [ $generateHT -eq 1 ]
then
	echo Heads
else
	echo Tails
fi
