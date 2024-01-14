# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=/home/mvster/.cache/.zcompdump-$HOST

ZSH_THEME="bira"

plugins=(
	git
)

source $ZSH/oh-my-zsh.sh

# User configuration - aliases
alias ohmyzsh="mate ~/.oh-my-zsh"
alias x="startx"
alias stopfirewalld="sudo systemctl stop firewalld.service"
alias startfirewalld="sudo systemctl start firewalld.service"
alias firefoxconfig="cd /home/mvster/.mozilla/firefox/y0rdmwh8.default-release/chrome"
alias v="nvim"
