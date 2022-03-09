#!/bin/bash
########################################################################
#
# Script de automação da instalação do webmin no raspberry Pi
#
#
# Autor: Miguel Rosa
# Data: Agosto 31, 2020
#
# changelog
# 2022.03.09: update webmin version
# 2021.11.21: update webmin version
########################################################################


#Check the user (root)
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi


#VARS
readonly VERSION=1.990
readonly DEPENDENCIES_LIST="perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions unzip"


#INSTALL
rm webmin_*  #remove any webmin .deb files
sudo apt install -y $DEPENDENCIES_LIST
echo 'change to /tmp directory...'
cd /tmp
wget https://sourceforge.net/projects/webadmin/files/webmin/${VERSION}/webmin_${VERSION}_all.deb
sudo dpkg -i webmin_${VERSION}_all.deb 
echo '\nInstallation complete. \nCleaning files...'
rm webmin_${VERSION}_all.deb
echo '\nDONE!\n\n'
