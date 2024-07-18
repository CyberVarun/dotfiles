# dotfiles
CyberVarun config/dot files

## Requirement

Debian, Ubuntu etc.

`sudo apt install stow -y`

Fedora, RedHat etc.

`sudo dnf install stow -y`

Arch, Manjaro etc.

`sudo pacman -S stow -y`

## Neovim config

To install execute

`stow nvim`

This will install the nvim configurations in `~/.config/nvim` directory.

To get familiar and understand keybindings you can watch this [video](https://youtu.be/6pAG3BHurdM).

## Tmux config

Before installation you should install `tpm` using following command.

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm` 

To install execute

`stow tmux`

This will install the tmux configurations in `~/.config/tmux` & in user home directory `~/.tmux.conf`. If you are using arch based distro you can remove `rm ~/.tmux.conf` or else remove `rm -f ~/.config/tmux` for other distros like ubuntu & fedora etc. So there will be no conflict of duplicate files.

After this open tmux by following command.

`tmux`

Then install the themes and plugins by pressing `[CTRL + a] + I`. 

for understanding tmux keybindings you watch this [video](https://youtu.be/U-omALWIBos).


