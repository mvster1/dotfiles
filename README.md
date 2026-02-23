# My Dotfiles for Fedora 42

These are my personal configuration files (dotfiles) for a customized desktop experience on Fedora 42. This setup is built around the **bspwm** window manager, providing a lightweight and keyboard-driven workflow.

## Overview

This repository contains all the necessary configuration files to replicate my setup, including settings for the window manager, terminal, panel, and various other applications. The main goal is to create a functional and aesthetically pleasing environment for development and general use.

### Key Components

* **Window Manager**: [bspwm](https://github.com/baskerville/bspwm) - A tiling window manager that represents windows as the leaves of a full binary tree.
* **Hotkey Daemon**: [sxhkd](https://github.com/baskerville/sxhkd) - A simple X hotkey daemon for bspwm.
* **Panel**: [Polybar](https://github.com/polybar/polybar) - A fast and easy-to-use status bar.
* **Terminal Emulator**: [Kitty](https://sw.kovidgoyal.net/kitty/) - A fast, feature-rich, GPU-based terminal emulator.
* **Application Launcher**: [Rofi](https://github.com/davatorium/rofi) - A window switcher, in this case used only as an application launcher, and dmenu replacement.
* **Compositor**: [Picom](https://github.com/yshui/picom) - A lightweight compositor for X11 (previously Compton).
* **Shell**: [Zsh](https://www.zsh.org/) with [Oh My Zsh](https://ohmyz.sh/) - A powerful and customizable shell.
* **GTK Theme**: Custom GTK-2.0, GTK-3.0, and GTK-4.0 settings for a consistent look and feel across applications.
* **Icons**: Custom icon theme.
* **Text Editor**: [Neovim](https://neovim.io/) - A hyperextensible Vim-based text editor.
* **Multiplexer**: [Tmux](https://github.com/tmux/tmux/wiki) - A terminal multiplexer.

## Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/mvster1/dotfiles.git
    ```

2.  **Run the post-installation script:**
    This script will install all the necessary packages and create symbolic links for the configuration files.
    ```bash
    cd ~/.dotfiles
    ./postinstall.sh
    ```
    *Review the `postinstall.sh` script before running it to ensure it aligns with your system and desired changes.*

## Configuration Details

* **`.config/`**: This directory contains most of the application-specific configurations.
    * `bspwm/`: Configuration for the bspwm window manager.
    * `sxhkd/`: Keybindings for bspwm.
    * `polybar/`: Configuration for the Polybar status bar.
    * `kitty/`: Settings for the Kitty terminal emulator.
    * `picom/`: Configuration for the Picom compositor.
    * `nvim/`: Neovim configuration.
    * `gtk-2.0/`, `gtk-3.0/`, `gtk-4.0/`: GTK theme settings.
    * `alacritty/`: Configuration for the Alacritty terminal emulator.
    * `tmux/`: Tmux configuration.
* **`.Xresources`**: X11 resource settings, used for theming older X applications.
* **`.zshrc`**: The main configuration file for Zsh.
* **`.xinitrc`**: The script that starts the X session, launching bspwm and other necessary applications.
* **`kitty/`**: Contains the `kitty.conf` and themes for the Kitty terminal.
* **`usr/bin/`**: Contains custom scripts, such as the `startx` script.
* **`postinstall.sh`**: The post-installation script to set up the environment.
* **`wacom_settings.sh`**: A script to configure Wacom tablet settings.
* **`zsh-ohmyzsh-install.sh`**: A script to install Oh My Zsh.

## Usage

* **Start the session**: Log in from a TTY and run `startx`.
* **Keybindings**: Refer to the `.config/sxhkd/sxhkdrc` file for a full list of keybindings.
* **Customization**: Feel free to modify the configuration files to suit your needs. Most settings are well-documented within the files themselves.

## Contributing

This is a personal dotfiles repository, but feel free to open an issue if you have any questions or suggestions.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
