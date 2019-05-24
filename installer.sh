#!/bin/bash
clear
# THIS SCRIPT IS ORIGINALLY FROM Uniminin #
echo "Updating/Upgrading System..."
sudo apt update && sudo apt upgrade
sudo apt-get update
echo "Installing Ubuntu Restricted Extras..."
sudo apt install ubuntu-restricted-extras
sudo apt-get update
echo "Installing Flatpak and it's dependencies..."
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "Installing Gnome Tweak Tool..."
sudo apt install gnome-tweak-tool
sudo apt-get update
echo "Installing Synaptic..."
sudo apt-get install synaptic
echo "Installing Some important dependencies for Devs..."
sudo apt install net-tools
sudo apt install openssh-server
echo "Done installing dependencies!"
clear
echo "Updating/Upgrading System..."
sudo apt update && sudo apt upgrade -y
sudo apt-get update
echo "Updating/Upgrading System..."
clear

echo "Installing Extra Software..."

# Atom

sh software/install-atom.sh

###############################################################################################

# Discord

sh software/install-discord.sh

###############################################################################################

# Docker

sh software/install-docker.sh

###############################################################################################

# Redshift

sh software/install-redshift.sh

###############################################################################################

# Gitkraken

sh software/install-gitkraken.sh

###############################################################################################

# Google Chrome

sh software/install-google-chrome.sh

###############################################################################################

# Insomnia

sh software/install-insomnia.sh

###############################################################################################

# Nodejs

sh software/install-nodejs.sh

###############################################################################################

# OBS

sh software/install-obs.sh

###############################################################################################

# Peek

sh software/install-peek.sh

###############################################################################################

# Spice-Up

sh software/install-spice-up.sh

###############################################################################################

# System Back

sh software/install-systemback.sh

###############################################################################################

# Teamviewer

sh software/install-teamviewer.sh

#############################################################################################

# Chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
cat /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update

#############################################################################################

# Ubuntu Cleaner

sh software/install-ubuntu-cleaner.sh

###############################################################################################

# Virtualbox

sh software/install-virtual-box.sh

###############################################################################################

echo "################################################################"
echo "##################  Extra Softwares Installed  ##################"
echo "################################################################"

#software from 'normal' repositories
sudo apt-get install -y apt-transport-https openssl software-properties-common python-software-properties git curl openssh-server ca-certificates zlib1g zlib1g-dev libpcre3 libpcre3-dev build-essential libssl-dev
sudo apt-get install -y catfish dconf-cli dconf-editor dropbox gimp gpick glances gparted grsync hardinfo inkscape openshot plank ppa-purge vlc screenfetch synapse filezilla adobe-flashplugin ffmpeg gedit screenruler shutter

###############################################################################################

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller


echo "################################################################"
echo "##################    core software installed  #################"
echo "################################################################"


echo "Installing Productivity..."

# Arc theme

sh theme/install-gtk-arc-theme.sh

#############################################################################################

# Arc OSX icons

sh theme/install-arc-osx-icons.sh

#############################################################################################

# Plank themes

sh theme/plank-themes.sh

###############################################################################################

# Cursor theme

apt-get install -y breeze-cursor-theme

echo "################################################################"
echo "###################  themes/icons installed  ###################"
echo "################################################################"
