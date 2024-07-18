# dotfiles
CyberVarun config/dot files

## ⚠️ Important
Installing config files with `stow` will create symlinks of files and directory of cloned repository. So if you delete the cloned repository the config files will no longer work. If you don't want to let this happen then simple copy paste the files & directory manually. 

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

## ZSH1 config

⚠️ This zsh configuration is created on fedora. It can work on other distros but don't forget to change the aliases according to you distros.

Requirements
  - powerlevel10k `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k && echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc`
  - fzf
  - zoxide
  - eza
  - bat

To install execute.

`stow zsh1`



