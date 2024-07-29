#!/bin/bash

# Use printf instead of echo
printf "Starting script...\n"

# Shell arithmetic 
start=$(($(date +%s%N)/1000000))

# Use command substitution and command grouping
{
	# Use awl for complex text processing
	awk -F',' '{sum += $2} END {print "Total:", sum}' data.csv

	# Use grep -F for fixed string searching
	grep -F "important_data" large_file.txt | wc -l

	# Use sort -u instead of sort | uniq
	sort -u names.txt
} > results.txt

# Use shell arithmetic again
end=$(($(date +%s%N)/1000000))

# Use printf and command substitution
printf "Script completed in %d milliseconds\n" $((end - start))

		

