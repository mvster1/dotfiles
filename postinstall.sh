# installing rpmfusion
echo "getting rpmfusion repo files (free & non-free)..."
wget https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-38.noarch.rpm
wget https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-38.noarch.rpm

echo "installing rpmfusion repo files..."
sudo dnf install rpmfusion-free-release-38.noarch.rpm
sudo dnf install rpmfusion-nonfree-release-38.noarch.rpm

rm rpmfusion-free-release-38.noarch.rpm fedorapmfusion-nonfree-release-38.noarch.rpm

echo "updating..."
sudo dnf update

# installing additional packages
echo "installing packages..."
sudo dnf install Xorg bspwm sxhkd polybar rofi neovim thunar gimp xfce4-terminal xset ffmpeg neofetch
echo "updading..."
sudo dnf update

# adding Martian Mono fonts
git clone https://github.com/evilmartians/mono
mkdir -p ~/.fonts/MartianMono
mv mono ~/.fonts/MartianMono/

# cleaning up
echo "cleaning things up..."
sudo dnf autoremove
sudo dnf clean all
sudo dnf clean packages
sudo dnf update
