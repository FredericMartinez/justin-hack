# Justin Hack

## Main features

- Download and apply a Justin Bieber's wallpaper, each 7 minutes
- End user can change this wallpaper, the crontab will re-apply this wallpaper

## Other Features

- We don't just apply the wallpaper every minutes, we use a random range 

## Usage

Default (Justin):
```
curl https://raw.githubusercontent.com/FredericMartinez/justin-hack/master/install.sh | bash
```

Custom person (`selena` for Selena Gomez. See `assets/images/$person.jpg`):
```
curl https://raw.githubusercontent.com/FredericMartinez/justin-hack/master/install.sh | bash -s selena
```

## Uninstall

Open 
```
crontab -e
```
Delete the correct justin hack line