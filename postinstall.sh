# installing rpmfusion
echo "getting rpmfusion repo files (free & non-free)..."
wget https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-38.noarch.rpm
wget https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-38.noarch.rpm

echo "installing rpmfusion repo files..."
sudo dnf install rpmfusion-free-release-38.noarch.rpm
sudo dnf install rpmfusion-nonfree-release-38.noarch.rpm

rm rpmfusion-free-release-38.noarch.rpm rpmfusion-nonfree-release-38.noarch.rpm

echo "updating..."
sudo dnf update

# installing additional packages
echo "installing packages..."
sudo dnf install Xorg xinit xset xsetroot bspwm sxhkd polybar arc-theme feh rofi neovim thunar gimp firefox xfce4-terminal ffmpeg neofetch
echo "updading..."
sudo dnf update

# adding Martian Mono fonts
echo "downloading and installing MartianMono fonts..."
mkdir -p ~/.fonts/MartianMono
git clone https://github.com/evilmartians/mono
mv mono ~/.fonts/MartianMono/

# cleaning up
echo "cleaning things up..."
sudo dnf autoremove
sudo dnf clean packages
sudo dnf clean all
