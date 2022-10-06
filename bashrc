export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# From foundry talk
export PATH="$PATH:/Users/amychou/.foundry/bin"

# ===== PS1 is the variable that sets the shell prompt =====
# Special characters for prompt:
# \h the hostname up to the first .
# \n newline
# \s the name of the shell
# \t the current time in 24-hour format
# \u the username of the current user
# \w the current working directory
# \W the baseneme of the current working directory

# ===== Color =====
# tput sets the color that is printed, e.g. $(tput setaf) right before a 
# command sets it to the color 166 (out of 256 color scheme)
# put $(tput sgr0) where you would like the color to end

orange=$(tput setaf 166);
yellow=$(tput setaf 288);
green=$(tput setaf 71);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${bold}\]";
PS1+="\[${orange}\]";
PS1+="[\u@\h \w ]\$ ";
PS1+="\[${reset}\]";
export PS1;
