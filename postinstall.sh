# installing rpmfusion
wget https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-38.noarch.rpm
wget https://mirrors.rpmfusion.org/nonfree/fedorapmfusion-nonfree-release-38.noarch.rpm

sudo dnf install rpmfusion-free-release-38.noarch.rpm
sudo dnf install rpmfusion-nonfree-release-38.noarch.rpm
sudo dnf update

rm rpmfusion-free-release-38.noarch.rpm fedorapmfusion-nonfree-release-38.noarch.rpm

# installing additional packages
sudo dnf install Xorg bspwm sxhkd polybar rofi neovim thunar gimp xfce4-terminal xset ffmpeg neofetch
sudo dnf update

sudo dnf autoremove
sudo dnf clean all
sudo dnf clean packages
