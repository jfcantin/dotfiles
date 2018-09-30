#!/usr/bin/env fish

mkdir -p $HOME/.config/fish

for f in fish/*
	rm -f $HOME/.config/fish/(basename $f)
	ln -s $PWD/$f $HOME/.config/fish/(basename $f)
end

mkdir -p $HOME/.config/fish/functions

for f in fish_functions/*
	rm -f $HOME/.config/fish/functions/(basename $f)
	ln -s $PWD/$f $HOME/.config/fish/functions/(basename $f)
end

mkdir -p $HOME/.config/fish/env

for f in fish_env/*
	rm -f $HOME/.config/fish/env/(basename $f)
	ln -s $PWD/$f $HOME/.config/fish/env/(basename $f)
end

mkdir -p $HOME/bin

for f in bin/*
	rm -f $HOME/bin/(basename $f)
	ln -s $PWD/$f $HOME/bin/(basename $f)
end

# git

rm -f $HOME/.gitconfig
ln -s $PWD/gitconfig $HOME/.gitconfig

rm -f $HOME/.gitignore
ln -s $PWD/gitignore $HOME/.gitignore

# vim
rm -f $HOME/.vimrc
ln -s $PWD/vimrc $HOME/.vimrc

# nvim
mkdir -p $HOME/.config/nvim
rm -f $HOME/.config/nvim/init.vim
ln -s $PWD/vimrc $HOME/.config/nvim/init.vim

# vscode
if test ! -d "$HOME/Library/Application Support/Code/User"
	mkdir -p "$HOME/Library/Application Support/Code/User"
end
if test -e "$HOME/Library/Application Support/Code/User/settings.json" 
	cp "$HOME/Library/Application Support/Code/User/settings.json" "$HOME/Library/Application Support/Code/User/settings.json.bak"
end
rm -f "$HOME/Library/Application Support/Code/User/settings.json"
ln -s $PWD/vscode-settings.json "$HOME/Library/Application Support/Code/User/settings.json"

# psql
rm -f $HOME/.psqlrc
ln -s $PWD/psqlrc $HOME/.psqlrc

# R
mkdir -p $HOME/Library/R
rm -f $HOME/.Renviron
ln -s $PWD/Renviron $HOME/.Renviron

# set keyrepeat for osx
defaults write -g ApplePressAndHoldEnabled -bool false
# defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
# defaults delete -g ApplePressAndHoldEnabled # reset if necessary

# Set screenshot folder
mkdir -p "$HOME/Pictures/Screenshots/"
defaults write com.apple.screencapture location ~/Pictures/Screenshots/

# Zotero setup not needed anymore 
# Use zotfile plugin instead with base dir in zotero
# rm -Rf $HOME/Zotero/storage
# ln -s ~/Dropbox/apps/zotero/storage ~/Zotero/
