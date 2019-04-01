#!/bin/bash

## Vars
jh=~/Library/Caches/jh
baseurl=https://raw.githubusercontent.com/FredericMartinez/justin-hack/master

## Switch images
images=(
    'justin_01-03::justin_birthday'
    'justin_12-24::justin_christmas'
    'justin::justin'
    'selena::selena'
    'mylene::mylene'
    'hellokitty::hellokitty'
)

finalimage='justin'

for index in "${images[@]}" ; do
  KEY="${index%%::*}"
  VALUE="${index##*::}"
  if [ "$KEY" == "$1" ]; then
    finalimage=$VALUE
  fi
done



## Do not download an image twice (ecological justin hack)
if [ ! -f $jh/$1.jpg ]; then
    curl -o $jh/$1.jpg $baseurl/assets/images/$finalimage.jpg > /dev/null
fi

## And the magic happens
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$jh'/'$finalimage.jpg'"'