#!/usr/bin/env python3

# web3 module is not installed by default. Run `pip3 install web3` to install it.
import sys
from web3 import Web3
from web3.auto import w3
from eth_account import Account

mnemonic = sys.argv[1]

Account.enable_unaudited_hdwallet_features()
wallet = Account.from_mnemonic(mnemonic)

print("Private Key:", wallet.key.hex())