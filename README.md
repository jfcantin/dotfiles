# New set of files for fish setup

To get the configuration of the old machine:
see paulirish github repo for details : https://github.com/paulirish/dotfiles/blob/master/setup-a-new-machine.sh


```
mkdir -p ~/migration/home/
mkdir -p ~/migration/Library/"Application Support"/
mkdir -p ~/migration/Library/Preferences/
mkdir -p ~/migration/Library/Application Support/
mkdir -p ~/migration/rootLibrary/Preferences/SystemConfiguration/

cd ~/migration

`brew leaves`
`brew cask list`
`npm list -g --depth=0`
`yarn global ls --depth=0`

cp -Rp \
	~/.fish_history \
	~/.gitconfig.local \
	~/.config/vimextra/dbextconfig.vim \
	~/.ssh
		~/migration/home
```

## Installation

### Using Git and the bootstrap script

