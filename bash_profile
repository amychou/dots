# Get homebrew into shellev
# IMPORTANT: This needs to go first because pyenv is installed
# by homebrew, and the pyenv commands won't work if you don't add
# homebrew to the PATH first.
eval "$(/opt/homebrew/bin/brew shellenv)"

source ~/.profile

# If .bashrc exists, then source the code from that file
# We can add all our customizations to .bashrc and not
# worry about .bash_profile
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
