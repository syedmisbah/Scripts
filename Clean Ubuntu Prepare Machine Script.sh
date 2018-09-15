exec sudo -i
dpkg --configure -a
apt-get update
apt-get -f install
apt-get dist-upgrade
apt-get install --reinstall ubuntu-desktop
apt-get autoremove
apt-get clean
reboot
