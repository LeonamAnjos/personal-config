apt update
apt upgrade

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
apt install -y .google-chrome-stable_current_amd64.deb
rm .google-chrome-stable_current_amd64.deb

# curl
apt install -y curl

# git
apt install -y git

# c compiler
apt install -y libssl-dev libreadline-dev zlib1g-dev gcc make

# VSCode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt update
apt install -y code

# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
source ~/.bashrc

# ruby
rbenv install 2.6.3 && rbenv global 2.6.3

# postgresql
apt install -y postgresql postgresql-contrib

# nodejs
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt install -y npm
npm install n
