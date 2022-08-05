#
# ~/.bashrc
#

neofetch
set -o vi

# sharship config
eval "$(starship init bash)"


# alias 
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias nv='neovide'
alias lg='lazygit'
alias cat='bat'
alias fm='clifm'
# end alias 


. "$HOME/.cargo/env"


