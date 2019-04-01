#!/bin/bash

## Vars
jh=~/Library/Caches/jh
baseurl=https://raw.githubusercontent.com/FredericMartinez/justin-hack/master

## And the magic happens
curl -o $jh/$1.jpg $baseurl/assets/images/$1.jpg
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$jh'/'$1.jpg'"'