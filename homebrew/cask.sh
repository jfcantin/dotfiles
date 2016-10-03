#!/usr/bin/env bash
# Install native apps
brew tap caskroom/cask

function installcask() {
	brew cask install "${@}" 2> /dev/null
}


brew cask install dropbox 
brew cask install google-chrome-canary
#brew cask install iterm2
brew cask install macvim
#installcask sublime-text
#installcask the-unarchiver
#installcask tor-browser
#installcask virtualbox
#installcask vagrant

#installcask vlc

# from caskroom/versions
#brew tap caskroom/versions
#installcask google-chrome-canary
#installcask rstudio-preview
#installcask sublime-text-3

brew cask cleanup
