# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$HOME/.cache/.zcompdump-$HOST

ZSH_THEME="bira"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration - aliases
alias ohmyzsh="cd ~/.oh-my-zsh && pwd"
alias x="startx"
alias fft="fastfetch"
alias fedorabtw="neofetch"
alias copy="xclip -selection c <"
alias stopfirewalld="sudo systemctl stop firewalld.service"
alias startfirewalld="sudo systemctl start firewalld.service"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias off="poweroff"
alias python="python3.12"
alias p="python3.12"
alias pip="pip3.12"
alias whereami="hostname"
alias :q="exit"
alias :qt="tmux kill-server"
alias :wq!="exit"
alias :wq="exit"
alias :qa!="exit"

PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
