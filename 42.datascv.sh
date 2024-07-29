#!/bin/bash

for i in {1..100}; do echo "$i,$(( RANDOM % 1000 ))" > data.csv; done


