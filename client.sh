#!/bin/bash

curl -o $PWD/justin.jpg http://www.baltana.com/files/wallpapers-3/Justin-Bieber-Widescreen-Wallpapers-10109.jpg
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$PWD'/justin.jpg"'



