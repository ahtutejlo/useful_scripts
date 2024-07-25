#!/bin/zsh

# This script takes a hex value as an argument and converts it to a string.
hex_input=$1

string_output=$(echo "$hex_input" | xxd -r -p)

echo "$string_output"