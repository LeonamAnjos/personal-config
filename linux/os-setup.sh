#!/bin/bash

apt update && apt upgrade

# curl
apt install -y curl

# git
add-apt-repository ppa:git-core/ppa \
    && apt update \
    && apt install -y git

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
&& apt install -y ./google-chrome-stable_current_amd64.deb \
&& rm ./google-chrome-stable_current_amd64.deb

# Brave
apt install -y apt-transport-https \
&& curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg \
&& echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list \
&& apt update \
&& apt install -y brave-browser

# c compiler
apt install -y      \
    libssl-dev      \
    libreadline-dev \
    zlib1g-dev      \
    libpq-dev       \
    libsqlite3-dev  \
    gcc             \
    make

# miscellaneous
apt install -y       \
    copyq            \
    flameshot        \
    vlc              \
    gnome-tweak-tool \
    htop             \
    neofetch

# VSCode
# Go to https://code.visualstudio.com/docs/setup/linux instead of below:
# wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -               \
# && add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" \
# && apt update     \
# && apt install -y \
#     code

# nodejs
# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
&& source ~/.bashrc \
&& nvm install node

# apt install -y libpng-dev
# apt install -y npm
# npm install -g n
# sudo n 9.10.1
npm install --global yarn
npm install --global typescript

# cypress dependecies
apt install -y    \
    xvfb          \
    libgtk-3-dev  \
    libnotify-dev \
    libgconf-2-4  \
    libnss3       \
    libxss1       \
    libasound2    \
    libgtk2.0-0:i386

# default java-jdk
apt install -y default-jdk

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

# add-apt-repository ppa:dawidd0811/neofetch
# apt update
# apt install -y neofetch
