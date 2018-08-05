set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

set -g __fish_git_prompt_show_informative_status 'yes'
set -g __fish_git_prompt_color_branch yellow
set -g __fish_git_prompt_color_upstream_ahead greed
set -g __fish_git_prompt_color_upstream_behind red

#set -g __fish_git_prompt_char_dirtystate         ' *'
#set -g __fish_git_prompt_char_stagedstate        ' ·'
#set -g __fish_git_prompt_char_stateseparator     ''
#set -g __fish_git_prompt_char_cleanstate         ''
#set -g __fish_git_prompt_char_upstream_ahead     ' ⬈'
#set -g __fish_git_prompt_char_upstream_behind    ' ⬋'
#set -g __fish_git_prompt_char_untrackedfiles     ' :'

function fish_prompt
	printf '%s ' (hostname|cut -d . -f 1)

	set_color $fish_color_cwd
	printf '%s' (prompt_pwd)

	#set_color normal
	printf '%s ' (__fish_git_prompt)

	#set_color normal
end
