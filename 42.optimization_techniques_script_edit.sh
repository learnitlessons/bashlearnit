#!/bin/bash



# Generate data.csv

for i in {1..100}; do echo "$i,$(( RANDOM % 1000 ))" >> data.csv; done



# Generate large_file.txt

for i in {1..1000}; do 

	    if [ $((RANDOM % 10)) -eq 0 ]; then

		            echo "important_data" >> large_file.txt

			        else

					        echo "other_data" >> large_file.txt

						    fi

					    done



					    # Generate names.txt

					    names=("Alice" "Bob" "Charlie" "David" "Eve" "Frank" "Grace" "Henry" "Ivy" "Jack")

					    for i in {1..50}; do

						        echo "${names[$((RANDOM % 10))]}" >> names.txt

						done



						# Now run the optimization script

						printf "Starting script...\n"



						# Shell arithmetic 

						start=$(($(date +%s%N)/1000000))



						# Use process substitution and command grouping

						{

							    # Use awk for complex text processing

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



							# Display results

							cat results.txt



							# Clean up

							rm data.csv large_file.txt names.txt
