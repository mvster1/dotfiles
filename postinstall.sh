# installing rpmfusion
wget https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-38.noarch.rpm
wget https://mirrors.rpmfusion.org/nonfree/fedorapmfusion-nonfree-release-38.noarch.rpm

sudo dnf install rpmfusion-free-release-38.noarch.rpm
sudo dnf install rpmfusion-nonfree-release-38.noarch.rpm
sudo dnf update

sudo dnf install Xorg bspwm sxhkd polybar rofi neovim thunar xset ffmpeg git neofetch
sudo dnf update
