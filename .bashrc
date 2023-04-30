#
# ~/.bashrc
#

neofetch
set -o vi

# sharship config
eval "$(starship init bash)"

export EDITOR='nvim'
export BROWSER='firefox'

# alias 
alias ls='ls --color'
alias la='ls -a --color'
alias ll='ls -l --color'
alias vim='lvim'
alias lg='lazygit'
alias fm='clifm'
alias c='clear'

# package manager 
alias search='pacman -Ss'
alias install='sudo pacman -S'
alias update='sudo pacman -Syu'
alias remove='sudo pacman -Rsu'

# git 
alias ga='git add .'
alias gc='git commit'
alias gp='git push'

# end alias 



if [ -f /etc/bash_completion ]; then
   . /etc/bash_completion
fi

complete -cf sudo

export PATH=$PATH:~/.local/bin:/home/dp/go/bin:/home/dp/.local/bin/:/home/dp/.cargo/bin
