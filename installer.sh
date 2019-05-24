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
echo "DONE INSTALLING DEPENDENCIES..."
clear

echo ">>> This Script will download and install the necessary pakages on your system."
echo ">>> Do you want to continue?"
echo ">>> y/n (default=y)"
read INPUT
if [ "$INPUT" = "n" ]; then
	echo ">>> Aborting installation"
	exit 0
  
echo "Installing Extra Software..."

# Atom

sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

###############################################################################################

# Discord

sudo snap install discord --classic
sudo apt update
sudo apt install gdebi-core wget
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
ls ~/discord.deb
/home/linuxconfig/discord.deb
sudo gdebi ~/discord.deb 


###############################################################################################

# Notepadqq

sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get install notepadqq-gtk

###############################################################################################

# VisualStudioCode

sudo snap install code --classic
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt updatesudo apt install code

###############################################################################################

# Gitkraken

sh software/install-gitkraken.sh

###############################################################################################

# Tor Browser

sudo nano /etc/apt/sources.list.d/tor.list
deb https://deb.torproject.org/torproject.org bionic main
deb-src https://deb.torproject.org/torproject.org bionic main
curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo gpg --import 
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
sudo apt-get update
sudo apt-get install tor deb.torproject.org-keyring torbrowser-launcher

###############################################################################################

# Deluge

sudo add-apt-repository ppa:deluge-team/ppa
sudo apt-get update
sudo apt-get install deluge

###############################################################################################

# qbitorrent

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt-get update
sudo apt-get install qbittorrent

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

echo "################################################################"
echo "####################    T H E   E N D    #######################"
echo "################################################################"
