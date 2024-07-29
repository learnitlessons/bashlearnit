#!/bin/bash

names=("Alice" "Bob" "Charley" "David" "Ece" "Frank" "Grace" "Jack")
for i in {1..50}; do echo "${names[(( RANDOM % 10 ))]}" >> names.txt; done


