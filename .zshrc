# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=/home/mvster/.cache/.zcompdump-$HOST

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
alias set_monitor_res="xrandr --output HDMI-1 --mode 1360x768"
alias set_tv_res="xrandr --output HDMI-1 --mode 1920x1080"
alias whereami="hostname"
alias :q="exit"
alias :qt="tmux kill-server"
alias :wq!="exit"
alias :wq="exit"
alias :qa!="exit"
alias librewolf="/home/mvster/vault/software/librewolf/AppRun"
alias upgrade="sudo dnf upgrade"
alias remotemouse="/home/mvster/vault/software/remotemouse/RemoteMouse"
alias obsidian="/home/mvster/vault/software/obsidian/AppRun"
alias mgba="/home/mvster/vault/software/mgba/AppRun"
alias nviminit="nvim /home/mvster/.config/nvim/init.vim"
alias rm="rm -i"

PATH="/home/mvster/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
