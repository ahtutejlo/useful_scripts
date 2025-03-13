#!/usr/bin/env python3

# This script converts an Ethereum private key to its corresponding address
# web3 module is not installed by default. Run `pip3 install web3` to install it.
import sys
from eth_account import Account
from eth_account.messages import encode_defunct

if len(sys.argv) != 2:
    print("Usage: ./pkToAddress.sh <private_key>")
    print("Note: Private key should be provided in hex format (with or without '0x' prefix)")
    sys.exit(1)

private_key = sys.argv[1]
if not private_key.startswith('0x'):
    private_key = '0x' + private_key

try:
    account = Account.from_key(private_key)
    print("Private Key:", private_key)
    print("Address:", account.address)
except Exception as e:
    print("Error: Invalid private key format")
    sys.exit(1)
