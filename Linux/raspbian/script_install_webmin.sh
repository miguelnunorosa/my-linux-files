#!/bin/bash
########################################################################
#
# Script de automação da instalação do webmin no raspberry Pi
#
#
# Autor: Miguel Rosa
# Data: Agosto 31, 2020
#
########################################################################


#Check the user (root)
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi


#VARS
readonly VERSION=1.955
readonly DEPENDENCIES_LIST="perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions"


#INSTALL
rm webmin_*  #remove any webmin .deb files
sudo apt install -y $DEPENDENCIES_LIST
wget https://sourceforge.net/projects/webadmin/files/webmin/${VERSION}/webmin_${VERSION}_all.deb
sudo dpkg -i webmin_${VERSION}_all.deb 
