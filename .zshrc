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
alias off="poweroff"
alias python="python3.12"
alias pip="pip3.12"
alias overrides.cfg="v /home/mvster/.librewolf/librewolf.overrides.cfg"
alias pokemmo="sh /home/mvster/vault/software/PokeMMO/PokeMMO.sh"
alias showzsh="cat /home/mvster/.zshrc"
alias set_monitor_res="xrandr --output HDMI-1 --mode 1360x768"
alias set_tv_res="xrandr --output HDMI-1 --mode 1920x1080"
alias iniciar="startx"
alias reiniciar="reboot"
alias desligar="poweroff"
alias whereami="hostname"
alias :wq="exit"

PATH="/home/mvster/.local/bin:$PATH"
