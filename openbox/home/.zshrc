# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/leedaeeun/.oh-my-zsh"

#oh-my-zsh 테마 변경
ZSH_THEME="powerlevel10k/powerlevel10k"

#zsh 플러그인 설치
plugins=(
    git
    zsh-syntax-highlighting 
    zsh-autosuggestions 
)
source $ZSH/oh-my-zsh.sh

#alias 설정
alias powerup='sudo apt-get update && sudo apt-get upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y'
alias rrm="sudo mv -t /home/leedaeeun/.local/share/Trash/files"
alias cal="if [ -t 1 ] ; then ncal -b ; else /usr/bin/cal ; fi"
alias weather_home="curl wttr.in/37.5508,126.8648"
alias weather_school="curl wttr.in/37.4868,126.8224"

#unzip 한글 깨짐 방지
export UNZIP="-O cp949"
export ZIPINFO="-O cp949"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
