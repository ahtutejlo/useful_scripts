#!/bin/zsh

# This script takes a Base64 encoded string as an argument, decodes it, and then converts it into a hexadecimal string.
base64_input=$1
hex_output=$(echo "$base64_input" | base64 -d | xxd -p | tr -d '\n')
echo "0x$hex_output"
