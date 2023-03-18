#
# ~/.bashrc
#

neofetch
set -o vi

# sharship config
eval "$(starship init bash)"

export EDITOR='emacs'

# alias 
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lv='lvim'
alias nv='nvim'
alias lg='lazygit'
alias fm='clifm'
alias c='clear'

# package manager 
alias search='emerge --search'
alias install='sudo emerge --ask -q'
alias update='sudo emerge --ask -q --verbose --update --deep --newuse @world'
alias remove='sudo emerge --unmerge'

# git 
alias ga='git add .'
alias gc='git commit'
alias gp='git push'

# emacs
alias emacs="emacsclient --socket-name=/tmp/emacs$(id -u)/server -c -a 'emacs'"

# end alias 



if [ -f /etc/bash_completion ]; then
   . /etc/bash_completion
fi

complete -cf sudo

export PATH=$PATH:~/.local/bin:~/.config/emacs/bin:/home/dp/go/bin
