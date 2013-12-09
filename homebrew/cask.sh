#!/usr/bin/env bash
# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
	brew cask install "${@}" 2> /dev/null
}

# installcask lastpass-universal #commented since it was installed manually
installcask dropbox
installcask skydrive
installcask evernote
installcask google-chrome
installcask iterm2
installcask macvim
installcask sublime-text
installcask the-unarchiver
installcask tor-browser
installcask virtualbox
installcask vagrant

#installcask vlc

# from caskroom/versions
brew tap caskroom/versions
installcask google-chrome-canary
installcask rstudio-preview
#installcask sublime-text-3
