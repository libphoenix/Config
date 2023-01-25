#
# ~/.bashrc
#

neofetch
set -o vi

# sharship config
eval "$(starship init bash)"

export EDITOR='lvim'

# alias 
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias v='lvim'
alias nv='nvim'
alias lg='lazygit'
alias fm='clifm'
alias ?='lynx'
alias ??='lynx https://google.com'
alias ww='lynx'
alias search='pacman -Ss'
alias chat='simplex-chat'
alias c='clear'

# package manager 
alias search='pacman -Ss'
alias install='sudo pacman -S'
alias update='sudo pacman -Syu'
alias remove='sudo pacman -Rsc'

# git 
alias ga='git add .'
alias gc='git commit'
alias gp='git push'

# end alias 



if [ -f /etc/bash_completion ]; then
   . /etc/bash_completion
fi

complete -cf sudo

. "$HOME/.cargo/env"
export PATH=$PATH:~/.local/bin

