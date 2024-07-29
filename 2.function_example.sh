#!/bin/bash

function great {
	local name="Bob"
	echo "Hello, $name!"
}
great
echo "Outside the function, name is: $name"
