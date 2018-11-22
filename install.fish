#!/usr/bin/env fish

mkdir -p $HOME/.config/fish

for f in shell/fish/*
	rm -f $HOME/.config/fish/(basename $f)
	ln -s $PWD/$f $HOME/.config/fish/(basename $f)
end

mkdir -p $HOME/.config/fish/functions

for f in shell/fish_functions/*
	rm -f $HOME/.config/fish/functions/(basename $f)
	ln -s $PWD/$f $HOME/.config/fish/functions/(basename $f)
end

mkdir -p $HOME/.config/fish/env

for f in shell/fish_env/*
	rm -f $HOME/.config/fish/env/(basename $f)
	ln -s $PWD/$f $HOME/.config/fish/env/(basename $f)
end

mkdir -p $HOME/bin

for f in shell/bin/*
	rm -f $HOME/bin/(basename $f)
	ln -s $PWD/$f $HOME/bin/(basename $f)
end

# git

rm -f $HOME/.gitconfig
ln -s $PWD/settings/gitconfig $HOME/.gitconfig

rm -f $HOME/.gitignore
ln -s $PWD/settings/gitignore $HOME/.gitignore

# vim
rm -f $HOME/.vimrc
ln -s $PWD/settings/vimrc $HOME/.vimrc

# nvim
mkdir -p $HOME/.config/nvim
rm -f $HOME/.config/nvim/init.vim
ln -s $PWD/settings/vimrc $HOME/.config/nvim/init.vim

# iterm
mkdir -p $HOME/.config/iterm
rm -f "$HOME/.config/iterm/com.googlecode.iterm2.plist"
ln -s $PWD/settings/com.googlecode.iterm2.plist "$HOME/.config/iterm/com.googlecode.iterm2.plist"

# vscode
if test ! -d "$HOME/Library/Application Support/Code/User"
	mkdir -p "$HOME/Library/Application Support/Code/User"
end
if test -e "$HOME/Library/Application Support/Code/User/settings.json" 
	cp "$HOME/Library/Application Support/Code/User/settings.json" "$HOME/Library/Application Support/Code/User/settings.json.bak"
end
rm -f "$HOME/Library/Application Support/Code/User/settings.json"
ln -s $PWD/settings/vscode-settings.json "$HOME/Library/Application Support/Code/User/settings.json"

# psql
rm -f $HOME/.psqlrc
ln -s $PWD/settings/psqlrc $HOME/.psqlrc

# R
mkdir -p $HOME/Library/R
rm -f $HOME/.Renviron
ln -s $PWD/settings/Renviron $HOME/.Renviron

# Zotero setup not needed anymore 
# Use zotfile plugin instead with base dir in zotero
# rm -Rf $HOME/Zotero/storage
# ln -s ~/Dropbox/apps/zotero/storage ~/Zotero/
