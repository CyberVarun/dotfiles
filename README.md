# dotfiles

CyberVarun config/dot files

## ⚠️ Important

Installing config files with `stow` will create symlinks of files and directory of cloned repository. So if you delete the cloned repository the config files will no longer work. If you don't want to let this happen then simple copy paste the files & directory manually.

## Requirement

Debian, Ubuntu etc.

```
sudo apt install stow -y
```

Fedora, RedHat etc.

```
sudo dnf install stow -y
```

Arch, Manjaro etc.

```
sudo pacman -S stow -y
```

## Neovim config

To install execute

```
stow nvim
```

This will install the nvim configurations in `~/.config/nvim` directory.

To get familiar and understand keybindings you can watch this [video](https://youtu.be/6pAG3BHurdM).

## Tmux config

Before installation you should install `tpm` using following command.

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

To install execute

```
stow tmux
```

This will install the tmux configurations in `~/.config/tmux` & in user home directory `~/.tmux.conf`. If you are using arch based distro you can remove `rm ~/.tmux.conf` or else remove `rm -f ~/.config/tmux` for other distros like ubuntu & fedora etc. So there will be no conflict of duplicate files.

After this open tmux by following command.

```
tmux
```

Then install the themes and plugins by pressing `[CTRL + a] + I`.

for understanding tmux keybindings you watch this [video](https://youtu.be/U-omALWIBos).

## ZSH config

Requirements

- powerlevel10k
  ```
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k && echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
  ```
- fzf
- zoxide
- eza
- bat
- [Meslo nerd font](https://www.nerdfonts.com/font-downloads)

⚠️ The following zsh configurations are created for fedora (zsh1) & endeavour OS (zsh2). It can work on other distros but don't forget to change the aliases according to you distros.

### ZSH1

To install execute.

```
stow zsh1
```

![ZSH1 Preview](./src/zsh1_preview.png "ZSH1 Preview")

### ZSH2
Install `pfetch` using `yay` or `paru` to show system information at start of the shell/terminal. To turn off this comment the last line `.zshrc`.

```
# pfetch
```

To install execute.

```
stow zsh2
```

![ZSH2 Preview](./src/zsh2_preview.png "ZSH2 Preview")
