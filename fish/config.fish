for F in $HOME/.config/fish/env/*
	source $F
end

source ~/.iterm2_shell_integration.(basename $SHELL)

set fish_greeting ""
