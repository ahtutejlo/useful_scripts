#!/bin/zsh

e=$(networksetup -getsecurewebproxy wi-fi | grep "No")

if [ -n "$e" ]; then
  echo "Turning on proxy"
  networksetup -setsecurewebproxystate wi-fi on
else
  echo "Turning off proxy"
  networksetup -setsecurewebproxystate wi-fi off
fi