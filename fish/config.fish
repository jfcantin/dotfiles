for F in $HOME/.config/fish/env/*
	source $F
end

for F in $HOME/.config/fish/alias/*
	source $F
end

set fish_greeting ""
