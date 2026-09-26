# https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Casks
brew install --cask adobe-acrobat-reader
brew install --cask alfred
brew install --cask brave-browser
brew install --cask cheatsheet
brew install --cask claude-code
brew install --cask discord
brew install --cask dotnet-sdk
# brew install --cask flameshot
brew install --cask flutter
brew install --cask iterm2
brew install --cask maccy
brew install --cask microsoft-teams
brew install --cask monitorcontrol
# brew install --cask rectangle
brew install --cask steam
brew install --cask stremio
brew install --cask surfshark
brew install --cask transmission
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask whatsapp
# brew install --cask zoom

# Formulae
brew install colima
brew install docker
brew install docker-completion
brew install docker-compose
brew install dotnet
brew install gh
brew install go
brew install go-md2man
brew install golang-migrate
brew install python@3.14

# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.
p10k configure

# https://github.com/MartinSeeler/iterm2-material-design
curl https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors --output ~/Downloads/material-design-colors.itermcolors
# https://github.com/MartinSeeler/iterm2-material-design?tab=readme-ov-file#how-to-use-it
