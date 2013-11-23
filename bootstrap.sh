#!/usr/bin/env bash

#-----------------------------------------------------------------------------
# Functions
#-----------------------------------------------------------------------------

# Notice title
notice() { echo  "\033[1;32m=> $1\033[0m"; }

backup() {
  mkdir -p $backupdir

  local files=( $(ls -a) )
  for file in "${files[@]}"; do
    in_array $file "${excluded[@]}" || cp -Rf "$HOME/$file" "$backupdir/$file"
  done
}

installFiles() {
  local files=( $(ls -a) )
  for file in "${files[@]}"; do
    in_array $file "${excluded[@]}"
    should_install=$?
    if [ $should_install -gt 0 ]; then
      [ -d "$HOME/$file" ] && rm -rf "$HOME/$file"
      cp -Rf "$file" "$HOME/$file"
    fi
  done
}

in_array() {
  local hay needle=$1
  shift
  for hay; do
    [[ $hay == $needle ]] && return 0
  done
  return 1
}

#-----------------------------------------------------------------------------
# Initialize
#-----------------------------------------------------------------------------

backupdir="$HOME/.dotfiles-backup/$(date "+%Y%m%d%H%M.%S")"
excluded=(. .. .git .gitignore bootstrap.sh dependencies.sh Gemfile Gemfile.lock Rakefile README.md)

#-----------------------------------------------------------------------------
# Install
#-----------------------------------------------------------------------------
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  notice "Backup up old files ($backupdir)"
  backup

	notice "Installing files in home directory"
	installFiles
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
  notice "Backup up old files ($backupdir)"
  backup

	notice "Installing files in home directory"
	installFiles
	fi
fi
source ~/.bash_profile

notice "Done"
exec $SHELL -l
