# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

neofetch
set -o vi

# sharship config
eval "$(starship init bash)"

export EDITOR='nvim'
export BROWSER='firefox'

complete -cf sudo

export PATH=$PATH:~/.local/bin:/home/dp/go/bin:/home/dp/.local/bin/:/home/dp/.config/scripts/:/snap/bin
export PATH=$PATH:/usr/local/go/bin
