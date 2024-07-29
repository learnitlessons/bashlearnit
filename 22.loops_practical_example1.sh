#!/bin/bash

for file in *.txt
do
	if [ -f "$file" ]
	then
		echo "Processing $file"
	fi
done

	
