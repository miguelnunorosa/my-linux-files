#!/bin/bash
########################################################################
#                                                                      #
# Script de automação da instalação do docker no raspberry Pi          #
#                                                                      #
#                                                                      #
# Autor: Miguel Rosa                                                   #
# Data: Agosto 31, 2020                                                #
########################################################################


#Check the user (root)
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi


#VARS
readonly DOCKER_URL=https://get.docker.com
readonly LOGGED_USER=$USER



########### INSTALL PROCESS

# Update the system
apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

# Get docker script to install
curl -fsSL ${DOCKER_URL} -o get-docker.sh && sh get-docker.sh

# logout to take effect
docker version

print "\n\nPlease log out and back in to complete installation. Don't forget to add user to docker group (usermod -aG docker [user_name])."
