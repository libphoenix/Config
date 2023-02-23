#
# ~/.bashrc
#

neofetch
set -o vi

# sharship config
#eval "$(starship init bash)"

export EDITOR='lvim'

# alias 
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias v='lvim'
alias nv='nvim'
alias lg='lazygit'
alias fm='clifm'
alias c='clear'

# package manager 
alias search='emerge --search'
alias install='doas emerge --ask -q'
alias update='doas emerge --sync'
alias remove='doas emerge --unmerge'

# git 
alias ga='git add .'
alias gc='git commit'
alias gp='git push'

# end alias 



if [ -f /etc/bash_completion ]; then
   . /etc/bash_completion
fi

complete -cf sudo

export PATH=$PATH:~/.local/bin

