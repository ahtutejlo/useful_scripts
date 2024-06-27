#!/bin/zsh

# This script takes an ether value as an argument and converts it to wei.
ether_input=$1
wei_output=$(echo "scale=0; $ether_input * 1000000000000000000 / 1" | bc)
echo "$wei_output"

