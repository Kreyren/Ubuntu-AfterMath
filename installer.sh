#!/bin/bash
clear
# THIS SCRIPT IS ORIGINALLY FROM Uniminin #
printf "This installer is simplistic as its just something I put together so I could easily install things once i reinstall ubntu for testing etc.\n\t- Uniminin\n"
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"

echo "Updating/Upgrading System..."
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get update

echo "Installing Ubuntu Restricted Extras..."
sudo apt-get install -y -qq ubuntu-restricted-extras
sudo apt-get update

echo "Installing Flatpak and it's dependencies..."
sudo apt-get install -y -qq flatpak
sudo apt-get install -y -qq gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Installing Gnome Tweak Tool..."
sudo apt-get install -y -qq gnome-tweak-tool
sudo apt-get update

echo "Installing Synapt-getic..."
sudo apt-get install -y -qq synapt-getic

echo "Installing Some important dependencies for Devs..."
sudo apt-get install -y -qq net-tools
sudo apt-get install -y -qq openssh-server

echo "Done installing dependencies!"


echo "Updating/Upgrading System..."
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get update
echo "DONE INSTALLING DEPENDENCIES..."

echo "Installing Extra Software..."

get -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install -qq -y atom wget

cd /tmp
wget -O  "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i ./discord.deb 

sudo snap install notepadqq

sudo apt-get install -y -qq software-properties-common apt-transport-https
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update 
sudo apt-get install -qq -y code

sudo add-apt-repository -y ppa:transmissionbt/ppa
sudo apt-get update
sudo apt-get install -y -qq transmission-gtk transmission-cli transmission-common transmission-daemon

sudo apt-get install -y -qq apt-transport-https


sudo add-apt-repository -y ppa:deluge-team/ppa
sudo apt-get update
sudo apt-get install -y -qq deluge

sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable
sudo apt-get update
sudo apt-get install -y -qq qbittorrent

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

sudo add-apt-repository -y ppa:kelleyk/emacs
sudo apt-get update
sudo apt-get install -y -qq emacs25

sudo add-apt-repository -y ppa:n-muench/programs-ppa
sudo apt-get update
sudo apt-get install -y -qq nano

sudo apt-get install -y -qq aria2

sudo add-apt-repository -y ppa:plushuang-tw/uget-stable
sudo apt-get update
sudo apt-get install -y -qq uget

cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome-stable_current_amd64.deb
sudo apt-get update

sudo add-apt-repository -y ppa:noobslab/apps
sudo apt-get update
sudo apt-get install -y -qq xdman

sudo add-apt-repository -y ppa:ubuntu-mozilla-security/ppa
sudo apt-get update
sudo apt-get install -y -qq thunderbird

sudo add-apt-repository -y ppa:webupd8team/brackets
sudo apt-get update
sudo apt-get install -y -qq brackets

sudo add-apt-repository -y ppa:oguzhaninan/stacer
sudo apt-get update
sudo apt-get install -y -qq stacer

sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install -y -qq gimp

sudo add-apt-repository -y ppa:kritalime/ppa
sudo apt-get update
sudo apt-get install -y -qq krita

sudo add-apt-repository -y ppa:openshot.developers/ppa
sudo apt-get update
sudo apt-get install -y -qq openshot-qt

sudo add-apt-repository -y ppa:libreoffice/ppa
sudo apt-get update
sudo apt-get install -y -qq libreoffice

sudo add-apt-repository -y  ppa:shutter/ppa
sudo apt-get update
sudo apt-get install -y -qq shutter
sudo add-apt-repository -y ppa:smathot/cogscinl
sudo apt-get update

echo "Installing Core Pakages..."
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install -y -qq fish

cp /etc/skel/.bashrc ~/
sudo chmod 644 ~/.bashrc

echo "Installing LIB"
sudo apt-get install -y -qq libappindicator1

echo "Installing Java"
sudo add-apt-repository -y ppa:webupd8team/java 
sudo apt-get update
sudo apt-get install -y -qq oracle-java8-installer
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

echo "Installing VLC"
sudo apt-get install -y -qq vlc 

echo "Installing Git"
sudo apt-get install -y -qq git-core 

echo "Installing MongoDB"
sudo apt-get-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt-get/sources.list.d/10gen.list
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
cd php/
wget https://github.com/luizpicolo/exemplos/raw/master/phpMyAdmin.tar.gz
tar -vzxf phpMyAdmin.tar.gz
rm phpMyAdmin.tar.gz

echo "Installing SublimeText"
sudo add-apt-repository -y ppa:webupd8team/sublime-text-2 
sudo apt-get update -y
sudo apt-get install -y -qq sublime-text 

rm -Rf ~/.config/sublime-text-2/
git clone https://github.com/luizpicolo/MySublimeText2SupportFiles.git ~/.config/sublime-text-2/

sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
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
sudo add-apt-repository -y ppa:umang/indicator-stickynotes 
sudo apt-get update 
sudo apt-get install -y -qq indicator-stickynotes 

echo "Installing SyncDrive"
sudo add-apt-repository -y ppa:noobslab/pear-apps 
sudo apt-get update -y
sudo apt-get install -y -qq syncdrive

echo "Removing Seahorse"
sudo apt-get remove seahorse

echo "Installing Ubuntu Make"
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get install -y -qq ubuntu-make

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

sudo apt-get install -y -qq  apt-get-transport-https openssl software-properties-common python-software-properties git curl openssh-server ca-certificates zlib1g zlib1g-dev libpcre3 libpcre3-dev build-essential libssl-dev
sudo apt-get install -y -qq  catfish dconf-cli dconf-editor dropbox gimp gpick glances gparted grsync hardinfo inkscape openshot plank ppa-purge vlc screenfetch synapse filezilla adobe-flashplugin ffmpeg gedit screenruler shutter

echo "LIB"
sudo apt-get install -y -qq  p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

echo "Done Installing Core Softwares"

echo "Installing dependencies 2nd..."
apt-get update
sudo apt-get install -y -qq build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev -y	 
sudo add-apt-repository -y ppa:deadsnakes/ppa 
sudo apt-get update
apt-get install -y -qq python3 python3-dev 
add-apt-repository -y ppa:ondrej/php 
add-apt-repository -y ppa:longsleep/golang-backports
apt-get update
apt-get install -y -qq git curl python3-pip python3-mysqldb 
apt-get install -y -qq python-dev libmysqlclient-dev nginx software-properties-common libssl-dev mysql-server 
pip3 install --upgrade pip
pip3 install flask

apt-get install -y -qq php7.0 php7.0-mbstring php7.0-mcrypt php7.0-fpm php7.0-curl php7.0-mysql golang-go 

apt-get install -y -qq composer 
apt-get install -y -qq zip unzip php7.0-zip 
apt-get update
sudo apt-get update && sudo apt-get upgrade 

echo "Done installing all the Dependencies & Softwares!\nExecute: ~/.dropbox-dist/dropboxd to enable Dropbox\nIf you want to enable fish shell you need to execute: chsh -s /usr/bin/fish"
