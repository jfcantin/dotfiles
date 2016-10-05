#!/usr/bin/env bash
# Install native apps
brew tap caskroom/cask

brew cask install dropbox 
brew cask install iterm2
brew cask install macvim
brew cask install spectacle
brew cask install docker

brew tap caskroom/versions
brew cask install google-chrome-canary

#installcask sublime-text
#installcask the-unarchiver
#installcask tor-browser
#installcask virtualbox
#installcask vagrant

#installcask vlc

# from caskroom/versions
#installcask google-chrome-canary
#installcask rstudio-preview
#installcask sublime-text-3

brew cask cleanup
