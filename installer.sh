#!/bin/bash
clear

# THIS SCRIPT IS ORIGINALLY FROM uniminin #
printf "I've made this so I could easily Install things once I reinstall ubuntu for testing.\n\t- Uniminin\n"
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"
sleep 4s

echo "Updating/Upgrading System..."
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get update

# Upgrade installed packages to latest
echo -e "\nRunning a package upgrade...\n"
apt-get -qq update && apt-get -qq dist-upgrade


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
sudo apt-get install -y -qq wget

echo "Done installing dependencies!"


echo "Updating/Upgrading System..."
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get update
echo "DONE INSTALLING DEPENDENCIES..."

echo "Installing Extra Software..."

cd ~
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get isntall -qq -y atom 

cd /tmp
wget -O /tmp/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i /tmp/discord.deb 
sudo apt install -f -y

sudo snap install notepadqq

cd ~
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

sudo apt-add-repository -y ppa:ubuntu-mozilla-security/ppa
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

sudo apt install -y -qq shutter

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


echo "Installing VLC"
sudo apt-get install -y -qq vlc 

echo "Installing Git"
sudo apt-get install -y -qq git-core 

echo "Installing MongoDB"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

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
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y -qq sublime-text

sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
sudo apt-get update -y
sudo apt-get install -y -qq y-ppa-manager

sudo apt install -y -qq gnupg2
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -L https://get.rvm.io | bash -s stable
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
sudo wget https://ci.popcorntime.sh/job/Popcorn-Time-Desktop/lastSuccessfulBuild/artifact/build/Popcorn-Time-0.3.10_linux64.tar.xz
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

echo "Installing Some More Extra dependencies..."
apt-get update && sudo apt-get upgrade -y
apt-get update
apt-get -qq update && apt-get -qq dist-upgrade
apt-get install aptitude -y
apt-get install build-essential autoconf libtool pkg-config python3-opengl python-imaging* python-pyrex* python3-pyside.qtopengl idle-python3.6 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python3-dev -y
add-apt-repository ppa:jonathonf/python-3.6 -y
apt-get update
apt-get install libxss1 -y
sudo aptitude install libxmu6
sudo apt install -y apt-rdepends
apt-get install python3.6
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 
apt-get update
sudo rm /usr/bin/python3
sudo ln -s python3.5 /usr/bin/python3
apt-get update
sudo add-apt-repository ppa:deadsnakes/ppa -y
apt-get update
apt-get install python3 python3-dev -y
apt-get update
add-apt-repository ppa:ondrej/php -y
sudo apt-get update
add-apt-repository ppa:longsleep/golang-backports -y
apt-get update
apt install git curl python3-pip python3-mysqldb -y
sudo apt-get update
apt-get install python3-dev libmysqlclient-dev nginx software-properties-common libssl-dev mysql-server -y
apt-get update
apt install python3-pip -y
apt install gcc -y
apt-get install tmux -y
sudo apt-add-repository ppa:roblib/ppa -y
apt-get update
apt-get install librl librl-demos librl-examples
apt-get install librl-dev
apt-get install librl-extras librl-doc librl-dbg
apt-get update
sudo apt-get update && sudo apt-get upgrade -y
apt install git -y
pip3 install --upgrade pip
pip3 install mysqlclient
pip3 install flask
pip3 install raven
pip3 install bcrypt
pip3 install tornado
apt install libmysqlclient-dev -y
pip3 install -U pip
pip3 install Cython
pip3 install setuptools
apt-get update
apt-get install php5.6 php5.6-mbstring php5.6-mcrypt php5.6-fpm php5.6-curl php5.6-mysql golang-go -y
apt-get install php7.0 php7.0-mbstring php7.0-mcrypt php7.0-fpm php7.0-curl php7.0-mysql -y
apt-get install php7.2 php7.2-mbstring php7.2-mcrypt php7.2-fpm php7.2-curl php7.2-mysql -y
apt-get update && apt-get upgrade -y	
apt-get install composer -y
apt-get install zip unzip php7.0-zip -y
sudo apt-get update --fix-missing
sudo apt-get install -f
sudo add-apt-repository ppa:dawidd0811/neofetch -y
apt-get update
apt install neofetch -y	
apt-get upgrade
sudo apt install figlet -y
sudo apt install libaa-bin -y
apt-get update

#Install stuff That I use all the time
echo -e "\nInstalling default packages...\n"
apt-get -qq install build-essential checkinstall fail2ban git git-core libbz2-dev libc6-dev libgdbm-dev libncursesw5-dev libreadline-gplv2-dev libsqlite3-dev libssl-dev nikto nmap nodejs python-dev python-numpy python-scipy python-setuptools tk-dev unattended-upgrades curl ufw
curl -L https://get.docker.com | sh

#Install and configure firewall
echo -e "\nConfiguring firewall...\n"
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh

sed -i.bak 's/ENABLED=no/ENABLED=yes/g' /etc/ufw/ufw.conf
chmod 0644 /etc/ufw/ufw.conf

#set timezone to UTC
echo -e "\nUpdating Timezone to UTC...\n"
sudo timedatectl set-timezone UTC

#Install Ruby
echo -e "\nInstalling Ruby...\n"
apt-get -qq install gnupg2 -y
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -L https://get.rvm.io | bash -s stable --ruby
source /usr/local/rvm/scripts/rvm

#PCAP Everything
echo -e "\nRunning docker: pcap...\n"
docker run -v ~/pcap:/pcap --net=host -d jgamblin/tcpdump

# Upgrade installed packages to latest
echo -e "\nRunning a package upgrade...\n"
apt-get -qq update && apt-get -qq dist-upgrade

printf "Done installing all the Dependencies & Softwares!\nExecute: ~/.dropbox-dist/dropboxd to enable Dropbox\nIf you want to enable fish shell you need to execute: chsh -s /usr/bin/fish"

echo "Done Installing All the Softwares and dependencies! Enjoy Your Ubuntu OS!"

