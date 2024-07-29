#!/bin/bash

for number in {1..10}
do
	if [ $number -eq 3 ]
	then
		continue # Skip the rest of iteration
	fi

	if [ $number -eq 8 ]
	then
		break # Exit the loop entirely
	fi

	echo "Number is $number"
done
