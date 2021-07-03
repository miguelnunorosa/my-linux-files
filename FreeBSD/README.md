# Install Notes


## About
This script helps you set up a desktop system on top of FreeBSD 13.0. It will install PKG, X, MATE, a login manager, some additional tools and set up a 'wheel video [cups]' user.

## Usage
1. Install a minimal image of FreeBSD 13.0 in *Bios/MBR* mode (not UEFI), select *with sources* if you plan on using nVidia drivers, and *do not* create any additional users.
2. Boot your new FreeBSD system and log in as root.
3. Navigate to yout TMP directory, fetch the install script from GitHub, and run it:
```
$ cd /tmp
$ fetch --no-verify-peer https://github.com/miguelnunorosa/my-linux-files/FreeBSD/install_dark_mate.sh
$ chmod +x install_dark_mate.sh
$ sh install_dark_mate.sh
```
4. Follow the instructions on screen. If you made a mistake, use CTRL+C to abort, then simply run the script again.

## Wallpaper location
The custom wallpapers can be found in */usr/local/share/backgrounds/fbsd*
