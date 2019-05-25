#!/bin/bash
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"
clear
# THIS SCRIPT IS ORIGINALLY FROM Uniminin #
printf "Please don't install -y -qq this in /root/ but whatever I installed it but I don't really care anyway.\nThis is also meant to be used on a fresh Ubuntu 16.04+ install but you can use other OS version anyway because this creates a new stuffs for a fresh OS etc.\nThis installer is simplistic as its just something I put together so I could easily install things once i reinstall ubntu for testing etc.\n\t- Uniminin\n"

echo "Updating/Upgrading System..."
sudo apt update && sudo apt upgrade
sudo apt-get update

echo "Installing Ubuntu Restricted Extras..."
sudo apt install -y -qq ubuntu-restricted-extras
sudo apt-get update

echo "Installing Flatpak and it's dependencies..."
sudo apt install -y -qq flatpak
sudo apt install -y -qq gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Installing Gnome Tweak Tool..."
sudo apt install -y -qq gnome-tweak-tool
sudo apt-get update

echo "Installing Synaptic..."
sudo apt-get install -y -qq synaptic

echo "Installing Some important dependencies for Devs..."
sudo apt install -y -qq net-tools
sudo apt install -y -qq openssh-server

echo "Done installing dependencies!"


echo "Updating/Upgrading System..."
sudo apt update && sudo apt upgrade -y
sudo apt-get update
echo "DONE INSTALLING DEPENDENCIES..."

echo "Installing Extra Software..."

sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install -y -qq atom

sudo snap install -y -qq discord --classic
sudo apt update
sudo apt install -y -qq gdebi-core wget
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
ls ~/discord.deb
/home/linuxconfig/discord.deb
sudo gdebi ~/discord.deb 

sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get install -y -qq notepadqq-gtk

sudo snap install -y -qq code --classic
sudo apt install -y -qq software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt updatesudo apt install -y -qq code

sudo add-apt-repository ppa:transmissionbt/ppa
sudo apt-get update
sudo apt-get install -y -qq transmission-gtk transmission-cli transmission-common transmission-daemon

sudo nano /etc/apt/sources.list.d/tor.list
deb https://deb.torproject.org/torproject.org bionic main
deb-src https://deb.torproject.org/torproject.org bionic main
curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo gpg --import 
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y -qq tor deb.torproject.org-keyring torbrowser-launcher

sudo add-apt-repository ppa:deluge-team/ppa
sudo apt-get update
sudo apt-get install -y -qq deluge

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt-get update
sudo apt-get install -y -qq qbittorrent

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf -    [On 32-Bit]
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - [On 64-Bit]
~/.dropbox-dist/dropboxd

sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt install -y -qq emacs25

sudo add-apt-repository ppa:n-muench/programs-ppa
sudo apt-get update
sudo apt-get install -y -qq nano

sudo apt-get install -y -qq aria2

sudo add-apt-repository ppa:plushuang-tw/uget-stable
sudo apt update
sudo apt install -y -qq uget

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
cat /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update

sudo add-apt-repository ppa:noobslab/apps
sudo apt-get update
sudo apt-get install -y -qq xdman

sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa
sudo apt-get update
sudo apt-get install -y -qq thunderbird

sudo add-apt-repository ppa:webupd8team/brackets
sudo apt-get update
sudo apt-get install -y -qq brackets

sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt-get update
sudo apt-get install -y -qq stacer

sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install -y -qq gimp

sudo add-apt-repository ppa:kritalime/ppa
sudo apt update
sudo apt install -y -qq krita

sudo add-apt-repository ppa:openshot.developers/ppa
sudo apt update
sudo apt install -y -qq openshot-qt

sudo add-apt-repository ppa:libreoffice/ppa
sudo apt update
sudo apt install -y -qq libreoffice

sudo add-apt-repository -y ppa:shutter/ppa
sudo apt update
sudo apt install -y -qq shutter
sudo add-apt-repository ppa:smathot/cogscinl
sudo apt-get update

echo "Installing Core Pakages..."
sudo apt-get install -y -qq fish

cp /etc/skel/.bashrc ~/
sudo chmod 644 ~/.bashrc

echo "Installing LIB"
sudo apt-get install -y -qq libappindicator1

echo "Installing Java"
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install -y -qq oracle-java8-installer -y
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

echo "Installing VLC"
sudo apt-get install -y -qq vlc 

echo "Installing Git"
sudo apt-get install -y -qq git-core 

echo "Installing MongoDB"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list
sudo apt-get update -y
sudo apt-get install -y -qq mongodb-10gen 

echo "Installing Curl"
sudo apt-get install -y -qq curl 

echo "Installing Mysql" 
sudo apt-get install -y -qq php5-cli 
sudo apt-get install -y -qq mysql-server 
sudo apt-get install -y -qq php5-mysql 

sudo ln -sf /lib/i386-linux-gnu/libudev.so.1 /lib/i386-linux-gnu/libudev.so.0
sudo apt-get install -y -qq libmysql-ruby libmysqlclient-dev

echo "Installing phpmyadmin"
cd
cd php/
wget https://github.com/luizpicolo/exemplos/raw/master/phpMyAdmin.tar.gz
tar -vzxf phpMyAdmin.tar.gz
rm phpMyAdmin.tar.gz

echo "Installing SublimeText"
sudo add-apt-repository ppa:webupd8team/sublime-text-2 
sudo apt-get update -y
sudo apt-get install -y -qq sublime-text 

rm -Rf ~/.config/sublime-text-2/
git clone https://github.com/luizpicolo/MySublimeText2SupportFiles.git ~/.config/sublime-text-2/

sudo add-apt-repository ppa:webupd8team/y-ppa-manager
sudo apt-get update -y
sudo apt-get install -y -qq y-ppa-manager

curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
source ~/.bashrc
rvm install -y -qq 2.0.0 --autolibs=packages
rvm use 2.0.0

sudo apt-get install -y -qq postgresql
sudo apt-get install -y -qq libpq-dev
sudo apt-get install -y -qq pgadmin3
sudo /etc/init.d/postgresql restart
sudo update-rc.d postgresql enable

echo "Installing Heroku"
wget -qO- https://toolbelt.heroku.com/install -y -qq-ubuntu.sh | sh

echo "Installing Nautilus TM"
sudo apt-get install -y -qq nautilus-open-terminal 

echo "Installing icons LO"
cd /usr/share/libreoffice/share/config/
sudo wget http://blog.goranrakic.com/archives/slike/images_flat.zip
sudo mv images_human.zip images_human.zip.bkp
sudo mv images_flat.zip images_human.zip

echo "Removing DSL"
sudo apt-get autoremove unity-lens-shopping -y
sudo apt-get autoremove unity-lens-music -y
sudo apt-get autoremove unity-lens-photos -y
sudo apt-get autoremove unity-lens-gwibber -y
sudo apt-get autoremove unity-lens-video -y

echo "Installing alacarte"
sudo apt-get install -y -qq alacarte

echo "Installing pindrive"
sudo add-apt-repository ppa:umang/indicator-stickynotes 
sudo apt-get update 
sudo apt-get install -y -qq indicator-stickynotes 

echo "Installing SyncDrive"
sudo add-apt-repository ppa:noobslab/pear-apps 
sudo apt-get update -y
sudo apt-get install -y -qq syncdrive

echo "Removing Seahorse"
sudo apt-get remove seahorse

echo "Installing ubuntu make"
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt update
sudo apt install -y -qq ubuntu-make

echo "Installing popcorn time"
cd /opt/
sudo wget https://ci.popcorntime.sh/job/Popcorn-Time-Desktop/lastSuccessfulBuild/artifact/Release/Popcorn-Time-Linux64.tar.xz
sudo tar -xJf Popcorn-Time-Linux64.tar.xz
sudo rm -f Popcorn-Time-Linux64.tar.xz
sudo mv linux64/ popcorntime/
sudo ln -s /opt/popcorntime/Popcorn-Time /usr/bin/popcorntime
sudo apt-get update

echo "Extra Softwares Installed"

echo "Installing Core Softwares"

sudo apt-get install -y -qq  apt-transport-https openssl software-properties-common python-software-properties git curl openssh-server ca-certificates zlib1g zlib1g-dev libpcre3 libpcre3-dev build-essential libssl-dev
sudo apt-get install -y -qq  catfish dconf-cli dconf-editor dropbox gimp gpick glances gparted grsync hardinfo inkscape openshot plank ppa-purge vlc screenfetch synapse filezilla adobe-flashplugin ffmpeg gedit screenruler shutter

echo "LIB"
sudo apt-get install -y -qq  p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

echo "Done Installing Core Softwares"

echo "Installing dependencies 2nd..."
apt-get update
sudo apt-get install -y -qq build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev -y	 
sudo add-apt-repository ppa:deadsnakes/ppa 
sudo apt-get update
apt-get install -y -qq python3 python3-dev 
add-apt-repository ppa:ondrej/php 
add-apt-repository ppa:longsleep/golang-backports
apt-get update
apt install -y -qq git curl python3-pip python3-mysqldb 
apt-get install -y -qq python-dev libmysqlclient-dev nginx software-properties-common libssl-dev mysql-server 
pip3 install --upgrade pip
pip3 install flask

apt-get install -y -qq php7.0 php7.0-mbstring php7.0-mcrypt php7.0-fpm php7.0-curl php7.0-mysql golang-go 

apt-get install -y -qq composer 
apt-get install -y -qq zip unzip php7.0-zip 
apt-get update
sudo apt update && sudo apt upgrade 

echo "Done installing all the Dependencies & Softwares!"
