#!/bin/bash

for i in {1..1000}; do 
	if [ $(( RANDOM % 10)) -eq 0 ];then
		echo "important_data" >> large_file.txt
	else
		echo "othert_data" >> large_file.txt
	fi
done

