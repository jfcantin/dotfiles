#!/usr/bin/env zsh

# dotfiles directory
dotfiledir="${HOME}/dotfiles"

# list of files/folders to symlink in ${ZSH_CUSTOM}
zsh_files=(zextra.zsh zaliases.zsh zprivate.zsh)

for file in "${zsh_files[@]}"; do
    echo "Creating symlink to $file in ${ZSH_CUSTOM}"
    ln -sf "${dotfiledir}/${file}" "${ZSH_CUSTOM}/${file}"
done

omz reload
