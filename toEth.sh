#!/usr/bin/env python3

import sys
from decimal import Decimal, getcontext

# Set the precision of Decimal to 50
getcontext().prec = 50
# This script takes a wei value as an argument and converts it to ether.
wei_input = Decimal(sys.argv[1])
ether_output = wei_input / Decimal('1000000000000000000')

# Format the output to remove trailing zeros
ether_output = ether_output.normalize()

# Convert to string using fixed-point notation
ether_output = format(ether_output, '.18f')

# Remove trailing zeros
ether_output = ether_output.rstrip('0')

# If the last character is a dot, remove it
if ether_output[-1] == '.':
    ether_output = ether_output[:-1]

print(ether_output)