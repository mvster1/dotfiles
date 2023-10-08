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
sudo dnf install Xorg xinit xset xsetroot bspwm sxhkd polybar arc-theme feh rofi neovim thunar gimp firefox xfce4-terminal ffmpeg nodejs pulseaudio pavucontrol neofetch
echo "updading..."
sudo dnf update

# installing required (and useful) multimedia codecs
echo "installing multimedia codecs..."
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install lame\* --exclude=lame-devel
echo "updating..."
sudo dnf update

# updating npm and installing yarn
sudo npm install -g npm@latest
sudo npm install --global yarn@latest

# adding Martian Mono fonts
echo "downloading and installing MartianMono fonts..."
mkdir -p ~/.fonts/MartianMono
git clone https://github.com/evilmartians/mono
mv mono ~/.fonts/MartianMono/

# disabling plymouth's splash theme (setting it to "details")
sudo plymouth-set-default-theme details -R

# cleaning up
echo "cleaning things up..."
sudo dnf autoremove
sudo dnf clean packages
sudo dnf clean all 
# after this, the dnf metadata will be regenerated when running dnf again, which usually takes a short while
