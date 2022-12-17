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
alias lv='lvim'
alias nv='nvim'
alias lg='lazygit'
alias cat='bat'
alias fm='clifm'
alias ?='lynx'
alias ??='lynx https://google.com'
alias ww='lynx'
alias search='pacman -Ss'
alias chat='simplex-chat'
# end alias 


. "$HOME/.cargo/env"

if [ -f /etc/bash_completion ]; then
   . /etc/bash_completion
fi

complete -cf sudo

export PATH=${PATH}:/home/deepakpatel/.local/bin
