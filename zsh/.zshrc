# Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.local/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set up fzf & zoxide
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# ALIASES
alias update="sudo dnf update"
alias myip="ip -o -4 addr show | awk '{print \$2\":- \"\$4}' | grep -Ev '^(br-|lo)'"
alias cat="bat"
alias fzf="fzf --preview 'bat --style=numbers --color=always'"

# DOCKER CONTAINERS

# KALI LINUX
alias kali="sudo docker exec -it -u varun -w /home/varun kali zsh"

# BLACKARCH
alias blackarch="sudo docker exec -it -u varun -w /home/varun blackarch zsh"

# ---- Eza (better ls) -----
alias ls="eza --icons=always"
alias lls="eza -lhg"

# EXPORTS
export PATH=$PATH:/opt/metasploit-framework/bin:~/.local/bin:~/.cargo/bin:/home/varun/bin
# export XDG_RUNTIME_DIR=/run/user/$(id -u)
export WORDCHARS="${WORDCHARS//\/}" # Remove / from wordchars
export BAT_THEME="base16"
export EDITOR='nvim'
export MANPAGER="bat -plman"

# History setup
HISTFILE=$HOME/.zsh_history
SAVEHIST=10000
HISTSIZE=10000
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_verify

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# blue='\033[1;34m'
# grn='\033[1;92m'
# white='\033[1;97m'

# echo -e "
# 		$blue┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$grn━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
# 		$blue┃ $grn  █████┓ ██┓   ██┓██████┓ ███████┓██████┓  $blue   ██┓   ██┓ █████┓ ██████┓ ██┓   ██┓███┓  ██┓ $grn┃
# 		$blue┃ $grn ██┏━━██┓┗██┓ ██┏┛██┏━━██┓██┏━━━━┛██┏━━██┓ $blue   ██┃   ██┃██┏━━██┓██┏━━██┓██┃   ██┃████┓ ██┃ $grn┃
# 		$blue┃ $grn ██┃  ┗━┛ ┗████┏┛ ██████┳┛█████┓  ██████┏┛ $blue   ┗██┓ ██┏┛███████┃██████┏┛██┃   ██┃██┏██┓██┃ $grn┃
# 		$blue┃ $grn ██┃  ██┓  ┗██┏┛  ██┏━━██┓██┏━━┛  ██┏━━██┓ $blue    ┗████┏┛ ██┏━━██┃██┏━━██┓██┃   ██┃██┃┗████┃ $grn┃
# 		$blue┃ $grn ┗█████┏┛   ██┃   ██████┳┛███████┓██┃  ██┃ $blue     ┗██┏┛  ██┃  ██┃██┃  ██┃┗██████┏┛██┃ ┗███┃ $grn┃
# 		$blue┃ $grn  ┗━━━━┛    ┗━┛   ┗━━━━━┛ ┗━━━━━━┛┗━┛  ┗━┛ $blue      ┗━┛   ┗━┛  ┗━┛┗━┛  ┗━┛ ┗━━━━━┛ ┗━┛  ┗━━┛ $grn┃
# 		$blue┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$grn━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛  "

# echo -e "
#		$blue┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$grn━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
#		$blue┃ $grn ██┓   ██┓ █████┓ ██████┓ ██┓   ██┓██┓   ██┓ $blue     ████████┓███████┓██████┓ ██┓  ██┓   $grn┃
#		$blue┃ $grn ██┃   ██┃██┏━━██┓██┏━━██┓██┃   ██┃████┓ ██┃ $blue     ┗━━██┏━━┛██┏━━━━┛██┏━━██┓██┃  ██┃   $grn┃
#		$blue┃ $grn ┗██┓ ██┏┛███████┃██████┏┛██┃   ██┃██┏██┓██┃ $blue        ██┃   █████┓  ██┃  ┗━┛███████┃   $grn┃
#		$blue┃ $grn  ┗████┏┛ ██┏━━██┃██┏━━██┓██┃   ██┃██┃┗████┃ $blue        ██┃   ██┏━━┛  ██┃  ██┓██┏━━██┃   $grn┃
#		$blue┃ $grn   ┗██┏┛  ██┃  ██┃██┃  ██┃┗██████┏┛██┃ ┗███┃ $blue        ██┃   ███████┓┗█████┏┛██┃  ██┃   $grn┃
#		$blue┃ $grn    ┗━┛   ┗━┛  ┗━┛┗━┛  ┗━┛ ┗━━━━━┛ ┗━┛  ┗━━┛ $blue        ┗━┛   ┗━━━━━━┛ ┗━━━━┛ ┗━┛  ┗━┛   $grn┃
#		$blue┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$grn━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛     "
