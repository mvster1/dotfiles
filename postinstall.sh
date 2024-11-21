# installing rpmfusion
wget https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-40.noarch.rpm
wget https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-40.noarch.rpm

sudo dnf install rpmfusion-free-release-40.noarch.rpm
sudo dnf install rpmfusion-nonfree-release-40.noarch.rpm

rm rpmfusion-free-release-40.noarch.rpm rpmfusion-nonfree-release-40.noarch.rpm

# updating (important on this step)
sudo dnf update

# installing additional packages
sudo dnf install Xorg xinit xset xbanish xdotool lxpolkit flameshot xsetroot bspwm sxhkd polybar arc-theme feh rofi neovim thunar gimp kitty ffmpeg nodejs pulseaudio pavucontrol libXinerama cups-libs dbus-glib fastfetch

# installing librewolf browser
curl -fsSL https://repo.librewolf.net/librewolf.repo | pkexec tee /etc/yum.repos.d/librewolf.repo
sudo dnf install librewolf

# installing additional fonts
sudo dnf group install fonts
sudo dnf install google-noto-sans-symbols-fonts

# updating
sudo dnf update

# installing required (and useful) multimedia codecs
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install lame\* --exclude=lame-devel

# updating
sudo dnf update

# updating npm and installing yarn
sudo npm install --global npm@latest
sudo npm install --global yarn@latest

# adding Martian Mono fonts
mkdir -p ~/.fonts/MartianMono
git clone https://github.com/evilmartians/mono
mv mono ~/.fonts/MartianMono/

# adding hack fonts
mkdir -p ~/.fonts/Hack
wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
unzip Hack-v3.003-ttf.zip
mv ttf ~/.fonts/Hack
rm -Rf Hack-v3.003-ttf.zip

# adding SF font pack
git clone https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts
mv San-Francisco-Pro-Fonts ~/.fonts/

# disabling plymouth's splash theme (setting it to "details")
sudo plymouth-set-default-theme details -R

# making gnome applications choose the light theme over dark
gsettings set org.gnome.desktop.interface color-scheme prefer-light

# cleaning up
sudo dnf autoremove
sudo dnf clean packages
sudo dnf clean all 
