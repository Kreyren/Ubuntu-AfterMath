#!/bin/bash

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


echo "Updating/Upgrading System..."
sudo apt update && sudo apt upgrade -y
sudo apt-get update
echo "DONE INSTALLING DEPENDENCIES..."

echo "Installing Extra Software..."

# Atom

sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

# Discord

sudo snap install discord --classic
sudo apt update
sudo apt install gdebi-core wget
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
ls ~/discord.deb
/home/linuxconfig/discord.deb
sudo gdebi ~/discord.deb 

# Notepadqq

sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get install notepadqq-gtk

# VisualStudioCode

sudo snap install code --classic
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt updatesudo apt install code

# Transmission

sudo add-apt-repository ppa:transmissionbt/ppa
sudo apt-get update
sudo apt-get install transmission-gtk transmission-cli transmission-common transmission-daemon

# Tor Browser

sudo nano /etc/apt/sources.list.d/tor.list
deb https://deb.torproject.org/torproject.org bionic main
deb-src https://deb.torproject.org/torproject.org bionic main
curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo gpg --import 
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
sudo apt-get update
sudo apt-get install tor deb.torproject.org-keyring torbrowser-launcher

# Deluge

sudo add-apt-repository ppa:deluge-team/ppa
sudo apt-get update
sudo apt-get install deluge

# qbitorrent

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt-get update
sudo apt-get install qbittorrent

# DropBox

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf -    [On 32-Bit]
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - [On 64-Bit]
~/.dropbox-dist/dropboxd

# Emacs

sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt install emacs25

# Nano

sudo add-apt-repository ppa:n-muench/programs-ppa
sudo apt-get update
sudo apt-get install nano

# Aria2

sudo apt-get install aria2

# uGet

sudo add-apt-repository ppa:plushuang-tw/uget-stable
sudo apt update
sudo apt install uget

# Chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
cat /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update

echo "Installing XDM"

sudo add-apt-repository ppa:noobslab/apps
sudo apt-get update
sudo apt-get install xdman

# Thunderbird

sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa
sudo apt-get update
sudo apt-get install thunderbird

# Brackets

sudo add-apt-repository ppa:webupd8team/brackets
sudo apt-get update
sudo apt-get install brackets

# Tracer

sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt-get update
sudo apt-get install stacer

echo "Installing GIMP"

sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install gimp

echo "Installing krita"

sudo add-apt-repository ppa:kritalime/ppa
sudo apt update
sudo apt install krita

echo "Installing Sopenshot"

sudo add-apt-repository ppa:openshot.developers/ppa
sudo apt update
sudo apt install openshot-qt

echo "Installing libre office"

sudo add-apt-repository ppa:libreoffice/ppa
sudo apt update
sudo apt install libreoffice

echo "Installing shutter"

sudo add-apt-repository -y ppa:shutter/ppa
sudo apt update
sudo apt install shutter
sudo add-apt-repository ppa:smathot/cogscinl
sudo apt-get update

echo "Installing Core Pakages..."
# Improvements for terminal
sudo apt-get install fish

cp /etc/skel/.bashrc ~/
sudo chmod 644 ~/.bashrc

echo "Installing LIB"
sudo apt-get install libappindicator1

echo "Installing Java"
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer -y
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

echo "Installing VLC"
sudo apt-get install vlc -y

echo "Installing Git"
sudo apt-get install git-core -y

echo "Installing MongoDB"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list
sudo apt-get update -y
sudo apt-get install mongodb-10gen -y

echo "Installing Curl"
sudo apt-get install curl -y

echo "Installing Mysql" 
sudo apt-get install php5-cli -y
sudo apt-get install mysql-server -y
sudo apt-get install php5-mysql -y

sudo ln -sf /lib/i386-linux-gnu/libudev.so.1 /lib/i386-linux-gnu/libudev.so.0
sudo apt-get install libmysql-ruby libmysqlclient-dev

echo "Installing phpmyadmin"
cd
cd php/
wget https://github.com/luizpicolo/exemplos/raw/master/phpMyAdmin.tar.gz
tar -vzxf phpMyAdmin.tar.gz
rm phpMyAdmin.tar.gz

echo "Installing sublimeText"
sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
sudo apt-get update -y
sudo apt-get install sublime-text -y

# Coona Packagers
rm -Rf ~/.config/sublime-text-2/
git clone https://github.com/luizpicolo/MySublimeText2SupportFiles.git ~/.config/sublime-text-2/

# PPa Maneger
sudo add-apt-repository ppa:webupd8team/y-ppa-manager -y
sudo apt-get update -y
sudo apt-get install y-ppa-manager -y

# Ruby com RVM
\curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
source ~/.bashrc
rvm install 2.0.0 --autolibs=packages
rvm use 2.0.0

# PostGres
sudo apt-get install postgresql -y
sudo apt-get install libpq-dev -y
sudo apt-get install pgadmin3 -y
# sudo -u postgres psql template1
# \password postgres
sudo /etc/init.d/postgresql restart
sudo update-rc.d postgresql enable

# NodeJS
#
# USE NVM
#
# mkdir -p ~/.nodes && cd ~/.nodes
# curl -O http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz
# tar -xzf node-v0.10.30-linux-x64.tar.gz
# mv node-v0.10.30-linux-x64 0.10.30
# ln -s 0.10.12 current
# rm ~/.nodes/node-v0.10.30-linux-x64.tar.gz

# cd

# echo 'export PATH="~/.nodes/current/bin:$PATH"' >> .bashrc
# source ~/.bashrc

echo "Installing Heroku"
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

echo "Installing Nautilus TM"
sudo apt-get install nautilus-open-terminal 

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
sudo apt-get install alacarte

echo "Installing pindrive"
sudo add-apt-repository ppa:umang/indicator-stickynotes -y
sudo apt-get update -y
sudo apt-get install indicator-stickynotes -y

echo "Installing SyncDrive"
sudo add-apt-repository ppa:noobslab/pear-apps -y
sudo apt-get update -y
sudo apt-get install syncdrive -y

echo "Removing Seahorse"
sudo apt-get remove seahorse

echo "Installing ubuntu make"
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt update
sudo apt install ubuntu-make

echo "Installing popcorn time"
cd /opt/
sudo wget https://ci.popcorntime.sh/job/Popcorn-Time-Desktop/lastSuccessfulBuild/artifact/Release/Popcorn-Time-Linux64.tar.xz
sudo tar -xJf Popcorn-Time-Linux64.tar.xz
sudo rm -f Popcorn-Time-Linux64.tar.xz
sudo mv linux64/ popcorntime/
# Create Symbolic Link
sudo ln -s /opt/popcorntime/Popcorn-Time /usr/bin/popcorntime
sudo apt-get update

echo "Extra Softwares Installed"

echo "Installing Core Softwares"

#software from 'normal' repositories
sudo apt-get install -y apt-transport-https openssl software-properties-common python-software-properties git curl openssh-server ca-certificates zlib1g zlib1g-dev libpcre3 libpcre3-dev build-essential libssl-dev
sudo apt-get install -y catfish dconf-cli dconf-editor dropbox gimp gpick glances gparted grsync hardinfo inkscape openshot plank ppa-purge vlc screenfetch synapse filezilla adobe-flashplugin ffmpeg gedit screenruler shutter

###############################################################################################

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

echo "Done Installing Core Softwares"

echo "Installing dependencies 2nd..."
apt-get update
## SOME UPDATES FOR GCP VPSES OR OTHER VPS PROVIDER
sudo apt-get install build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev -y	 
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update
apt-get install python3 python3-dev -y
add-apt-repository ppa:ondrej/php -y
add-apt-repository ppa:longsleep/golang-backports -y
apt-get update
apt install git curl python3-pip python3-mysqldb -y
apt-get install python-dev libmysqlclient-dev nginx software-properties-common libssl-dev mysql-server -y
pip3 install --upgrade pip
pip3 install flask

apt-get install php7.0 php7.0-mbstring php7.0-mcrypt php7.0-fpm php7.0-curl php7.0-mysql golang-go -y

apt-get install composer -y
apt-get install zip unzip php7.0-zip -y
apt-get update
sudo apt update && sudo apt upgrade -y

echo "Done installing dependencies!"

echo "THE END!"
