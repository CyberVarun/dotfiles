# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# SYSTEM ALIASES
alias update="sudo dnf update"
alias myip="echo 'wlo1:- $(hostname -I | cut -f1 -d' ') \nwlan0:- $(hostname -I | cut -f2 -d' ') \ntun0:- $(hostname -I | cut -f3 -d' ')'"
alias cat="bat"

# SSH ALIAS
alias ssha='eval $(ssh-agent) && ssh-add'

# EXPORTS
export PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:~/.npm-global/bin
export PATH=$PATH:~/bin
export PATH=$PATH:~/.local/bin/

# DOCKER CONTAINERS

# KALI LINUX
alias kali="sudo docker exec -it -u varun -w /home/varun kali zsh"

# BLACKARCH
alias blackarch="sudo docker exec -it -u varun -w /home/varun blackarch zsh"

# UBUNTU 22.04 LTS
alias ubuntu-start="sudo docker start ubuntu"
alias ubuntu="sudo docker exec -it -u varun -w /home/varun ubuntu zsh"

# ARCH LINUX
alias arch-start="sudo docker start archlinux"
alias archlinux="sudo docker exec -it -u varun -w /home/varun archlinux fish"

# ANSIBLE 
# alias ansible-serv="sudo docker start server1 server2"

# ---- Eza (better ls) -----
alias ls="eza --icons=always"
alias lls="eza -lhg"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

# History setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init --cmd cd zsh)"

export BAT_THEME="Solarized (light)"

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

blue='\033[1;34m'
grn='\033[1;92m'
white='\033[1;97m'

# echo -e "
# 		$blue┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$grn━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
# 		$blue┃ $grn  █████┓ ██┓   ██┓██████┓ ███████┓██████┓  $blue   ██┓   ██┓ █████┓ ██████┓ ██┓   ██┓███┓  ██┓ $grn┃
# 		$blue┃ $grn ██┏━━██┓┗██┓ ██┏┛██┏━━██┓██┏━━━━┛██┏━━██┓ $blue   ██┃   ██┃██┏━━██┓██┏━━██┓██┃   ██┃████┓ ██┃ $grn┃
# 		$blue┃ $grn ██┃  ┗━┛ ┗████┏┛ ██████┳┛█████┓  ██████┏┛ $blue   ┗██┓ ██┏┛███████┃██████┏┛██┃   ██┃██┏██┓██┃ $grn┃
# 		$blue┃ $grn ██┃  ██┓  ┗██┏┛  ██┏━━██┓██┏━━┛  ██┏━━██┓ $blue    ┗████┏┛ ██┏━━██┃██┏━━██┓██┃   ██┃██┃┗████┃ $grn┃
# 		$blue┃ $grn ┗█████┏┛   ██┃   ██████┳┛███████┓██┃  ██┃ $blue     ┗██┏┛  ██┃  ██┃██┃  ██┃┗██████┏┛██┃ ┗███┃ $grn┃
# 		$blue┃ $grn  ┗━━━━┛    ┗━┛   ┗━━━━━┛ ┗━━━━━━┛┗━┛  ┗━┛ $blue      ┗━┛   ┗━┛  ┗━┛┗━┛  ┗━┛ ┗━━━━━┛ ┗━┛  ┗━━┛ $grn┃
# 		$blue┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$grn━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  "

 echo -e "
		$blue┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$grn━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
		$blue┃ $grn ██┓   ██┓ █████┓ ██████┓ ██┓   ██┓██┓   ██┓ $blue     ████████┓███████┓██████┓ ██┓  ██┓   $grn┃
		$blue┃ $grn ██┃   ██┃██┏━━██┓██┏━━██┓██┃   ██┃████┓ ██┃ $blue     ┗━━██┏━━┛██┏━━━━┛██┏━━██┓██┃  ██┃   $grn┃
		$blue┃ $grn ┗██┓ ██┏┛███████┃██████┏┛██┃   ██┃██┏██┓██┃ $blue        ██┃   █████┓  ██┃  ┗━┛███████┃   $grn┃
		$blue┃ $grn  ┗████┏┛ ██┏━━██┃██┏━━██┓██┃   ██┃██┃┗████┃ $blue        ██┃   ██┏━━┛  ██┃  ██┓██┏━━██┃   $grn┃
		$blue┃ $grn   ┗██┏┛  ██┃  ██┃██┃  ██┃┗██████┏┛██┃ ┗███┃ $blue        ██┃   ███████┓┗█████┏┛██┃  ██┃   $grn┃
		$blue┃ $grn    ┗━┛   ┗━┛  ┗━┛┗━┛  ┗━┛ ┗━━━━━┛ ┗━┛  ┗━━┛ $blue        ┗━┛   ┗━━━━━━┛ ┗━━━━┛ ┗━┛  ┗━┛   $grn┃
		$blue┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$grn━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛     "
