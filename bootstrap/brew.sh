#!/usr/bin/env bash

# require xcode-select --install
# once completed will need to do 
# echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
# sudo chsh -s /usr/local/bin/fish username

brew update
brew upgrade

#brew install openssl
brew install git
brew install fish
brew install autojump
brew install neovim
brew install rsync
brew install tree

brew install pandoc
brew install the_platinum_searcher

brew install python
brew install node
brew install yarn
brew install postgresql
brew install sqlite
brew install go
brew install hugo
brew install doctl

pip3 install neovim
