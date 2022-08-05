#
# ~/.bashrc
#

neofetch
set -o vi

# sharship config
eval "$(starship init bash)"


# alias 
alias ls='ls --color=auto'
alias nv='neovide'
alias cat='bat'
alias fm='clifm'
# end alias 

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. "$HOME/.cargo/env"


