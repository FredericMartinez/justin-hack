#!/usr/bin/env bash

## Vars
jh=~/Library/Caches/jh
baseurl=https://raw.githubusercontent.com/FredericMartinez/justin-hack/master

# Get Satan Wallpaper
curl -o $jh/wallpaper.sh $baseurl/wallpaper.sh
chmod +x $jh/wallpaper.sh

# Run Satan Wallpaper
sh $jh/wallpaper.sh justin_default