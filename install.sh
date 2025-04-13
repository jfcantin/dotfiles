#!/usr/bin/env zsh
############################
# This script creates symlinks from the home directory to any desired dotfiles in $HOME/dotfiles
# And also installs MacOS Software
# And also installs Homebrew Packages and Casks (Apps)
# And also sets up VS Code
# And also sets up Jetbrains toolbox
############################

echo "copy the .gitconfig.local.template to .gitconfig.local and update user information"
echo "Press enter to continue..."
read

# dotfiles directory
dotfiledir="${HOME}/dotfiles"

# list of files/folders to symlink in ${homedir}
files=(zprofile gitconfig gitconfig.local psqlrc Renviron)

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd "${dotfiledir}" || exit

# create symlinks (will overwrite old dotfiles)
for file in "${files[@]}"; do
    echo "Creating symlink to $file in home directory."
    ln -sf "${dotfiledir}/.${file}" "${HOME}/.${file}"
done

# create symlinks for configs (will overwrite old configs)
mkdir -p "${HOME}/.config/ruff"
ln -sf "${dotfiledir}/settings/ruff.toml" "${HOME}/.config/ruff/ruff.toml"

# Run the MacOS Script
./macOS.sh

# Run the Homebrew Script
./brew.sh

# Run VS Code Script
./vscode.sh

echo "setup zprivate.zsh in dotfiles folder for oh-my-zsh"
echo "Press enter to continue..."
read

echo "Installation Complete! run post oh-my-zsh install"

echo "installing oh-my-zsh..."
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# list of files/folders to symlink in ${ZSH_CUSTOM}
zsh_files=(zextra.zsh zaliases.zsh zprivate.zsh)

for file in "${zsh_files[@]}"; do
    echo "Creating symlink to $file in ${ZSH_CUSTOM}"
    ln -sf "${dotfiledir}/${file}" "${ZSH_CUSTOM}/${file}"
done

omz reload
