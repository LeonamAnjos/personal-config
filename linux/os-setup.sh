#!/bin/bash

apt update
apt upgrade

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install -y ./google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb

# curl
apt install -y curl

# git
add-apt-repository ppa:git-core/ppa
apt update; apt install -y git

# c compiler
apt install -y libssl-dev libreadline-dev zlib1g-dev libpq-dev libsqlite3-dev gcc make

# cypress dependecies
apt install -y xvfb libgtk-3-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libgtk2.0-0:i386

# VSCode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt update
apt install -y code

# rvm
# better restart computer before using rvm
# apt install -y software-properties-common
# apt-add-repository -y ppa:rael-gc/rvm
# apt-get update
# apt install -y rvm

# rbenv
# https://github.com/rbenv/rbenv#installation
apt install -y rbenv
rbenv init
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# https://github.com/rbenv/ruby-build#installation
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# verify
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash

# postgresql
# apt install -y postgresql postgresql-contrib

# nodejs
# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
nvm install node

# apt install -y libpng-dev
# apt install -y npm
# npm install -g n
# sudo n 9.10.1
npm install --global yarn
npm install --global typescript

# miscellaneous
apt install -y copyq
apt install -y flameshot
apt install -y vlc
apt install -y gnome-tweak-tool
apt install -y htop

# add-apt-repository ppa:dawidd0811/neofetch
# apt update
apt install -y neofetch
