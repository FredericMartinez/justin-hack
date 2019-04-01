#!/bin/bash

## Vars
jh=~/Library/Caches/jh
baseurl=https://raw.githubusercontent.com/FredericMartinez/justin-hack/master

## Swich images
images=(
    'justin_01-03::justin_birthday'
    'justin_12-24::justin_christmas'
    'justin_default::justin_default'
)

finalimage='justin_default'

for index in "${images[@]}" ; do
  KEY="${index%%::*}"
  VALUE="${index##*::}"
  if [ "$KEY" == "$1" ]; then
    finalimage=$VALUE
  fi
done



## And the magic happens
curl -o $jh/$1.jpg $baseurl/assets/images/$finalimage.jpg
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$jh'/'$finalimage.jpg'"'