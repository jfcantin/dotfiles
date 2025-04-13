# Shortcuts
alias ch='history | grep "git commit"'
alias hg='history | grep'

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Get OS X Software Updates
alias update_system='sudo softwareupdate -i -a'

# Update/upgrade Homebrew and their installed packages
alias update_brew='brew update; brew upgrade; brew upgrade --cask; brew cleanup; $(brew --prefix)/bin/npm update --global;'

# Show/hide hidden files in Finder
# As of macOS Sierra (10.12) and later, you can simply press Cmd + Shift + . (period) while in Finder to toggle the visibility of hidden files.
# alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
# alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

alias clean="osascript -e 'tell application \"Finder\" to empty the trash' 2>/dev/null; rm -rf ~/Downloads/*"

# Find Files and Directories
alias fd='find . -type d -iname'
alias ff='find . -type f -iname'

alias ohmyzsh="nvim ~/.oh-my-zsh"
alias zshrc="nvim ~/.zshrc"
alias zshconfig="nvim ${ZSH_CUSTOM}/zextra.zsh"
alias aliases="nvim ${ZSH_CUSTOM}/zaliases.zsh"
alias nvimconfig='nvim ~/.config/nvim/init.vim'
alias aliasg='alias | grep'
alias galias='alias | grep'
alias gmff='git merge --ff-only'
alias ld='DOCKER_HOST=unix:///Users/jfcantin/.rd/docker.sock lazydocker'
#alias polysync='rclone copy --max-age 5y --metadata -v s3polygon:flatfiles /Users/jfcantin/icloud/Trading/data/polygon --exclude-from /Users/jfcantin/icloud/Trading/data/excluded-stock-dates.txt'
alias polysync='rclone copy --metadata -v s3polygon:flatfiles /Users/jfcantin/icloud/Trading/data/polygon --exclude-from /Users/jfcantin/icloud/Trading/data/excluded-stock-dates.txt'
alias nosleep='caffeinate -u -d -t 38000 &'

