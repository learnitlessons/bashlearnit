#!/bin/bash

echo "Enter your age: "
read age

if [ $age -ge 18 ] && [ $age -le 65 ]
then
	echo "You are of working age"
else
	echo "You are either to young or of retirement age."
fi
