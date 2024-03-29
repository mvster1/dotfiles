# installing rpmfusion
echo "getting rpmfusion repo files (free & non-free)..."
wget https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-39.noarch.rpm
wget https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-39.noarch.rpm

echo "\ninstalling rpmfusion repo files..."
sudo dnf install rpmfusion-free-release-39.noarch.rpm
sudo dnf install rpmfusion-nonfree-release-39.noarch.rpm

rm rpmfusion-free-release-39.noarch.rpm rpmfusion-nonfree-release-39.noarch.rpm

echo "\nupdating..."
sudo dnf update

# installing additional packages
echo "\ninstalling packages..."
sudo dnf install Xorg xinit xset flameshot xsetroot bspwm sxhkd polybar arc-theme feh rofi neovim thunar gimp firefox kitty ffmpeg nodejs pulseaudio pavucontrol neofetch libXinerama cups-libs dbus-glib

# installing additional fonts
sudo dnf group install fonts

echo "\nupdading..."
sudo dnf update

# installing required (and useful) multimedia codecs
echo "\ninstalling multimedia codecs..."
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install lame\* --exclude=lame-devel

echo "\nupdating..."
sudo dnf update

# updating npm and installing yarn
echo "\nupdating npm and installing yarn"
sudo npm install -g npm@latest
sudo npm install --global yarn@latest

# adding Martian Mono fonts
echo "\ndownloading and installing MartianMono fonts..."
mkdir -p ~/.fonts/MartianMono
git clone https://github.com/evilmartians/mono
mv mono ~/.fonts/MartianMono/

# adding SF font pack
echo "\ndownloading and installing SF fonts..."
git clone https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts
mv San-Francisco-Pro-Fonts ~/.fonts/

# disabling plymouth's splash theme (setting it to "details")
sudo plymouth-set-default-theme details -R

# cleaning up
echo "\ncleaning things up..."
sudo dnf autoremove
sudo dnf clean packages
sudo dnf clean all 
# after this, the dnf metadata will be regenerated when running dnf again, which usually takes a short while
