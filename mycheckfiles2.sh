#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "#======================================="
echo "Start Times"
head -n 1 rpl*.out
head -n 1 rs*.out

echo "End Times"
tail -n 5  rpl*.out
tail -n 5 rs*.out
echo "#======================================="
