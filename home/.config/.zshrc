# Path to your oh-my-zsh installation.
export ZSH="/home/leedaeeun/.oh-my-zsh"

#oh-my-zsh 테마 변경
ZSH_THEME="agnoster"

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

#unzip 한글 깨짐 방지
export UNZIP="-O cp949"
export ZIPINFO="-O cp949"
