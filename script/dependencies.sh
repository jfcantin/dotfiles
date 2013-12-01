# inspired from paul irish dotfiles

# install xcode cli tools 
# check evernote for link to alexw.me blog 2013/10
xcode-select --install

# homebrew!
# you need the code CLI tools YOU FOOL.
#ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby

# https://github.com/rupa/z
# z, oh how i love you
cd ~/code
git clone https://github.com/rupa/z.git
chmod +x ~/code/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile

# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
#bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)


# https://github.com/isaacs/nave
# needs npm, obviously.
# TODO: I think i'd rather curl down the nave.sh, symlink it into /bin and use that for initial node install.
#npm install -g nave



# https://github.com/jeroenbegyn/VLCControl
# VLC Controll Script
cd ~/code
git clone git://github.com/jeroenbegyn/VLCControl.git


# my magic photobooth symlink -> dropbox. I love it.
# first move Photo Booth folder out of Pictures
# then start Photo Booth. It'll ask where to put the library.
# put it in Dropbox/public

# now you can record photobooth videos quickly and they upload to dropbox DURING RECORDING
# then you grab public URL and send off your video message in a heartbeat.


# for the c alias (syntax highlighted cat)
sudo easy_install Pygments


# chrome canary as default
# on a mac you can set chrome canary as your default inside of Safari preferences :)
