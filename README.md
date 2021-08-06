# My Linux Mint Setting
This is my personal Linux Mint setting.  
***
### 애플릿에서 설정 해야 할 것
* CPU Temperature Indicator
* System Monitor
***
### 삭제 해야 할 프로그램
* Celluloid
* Hypnotix
* Pix
* Drawing
* Onboard
* Rhythmbox
* Hexchat
* Thunderbird
* Libreoffice
```swift
sudo apt-get --purge remove celluloid hypnotix pix* drawing onboard* rhythmbox* hexchat* thunderbird* libreoffice*
```
***
### 설치 해야 할 프로그램
* Vlc
* Terminator
* Kolourpaint
* Numlock 활성화(설치 후 Login Window -> Settings에서 Activate numlock 선택하기)
* git
* PPA 지원
* axel
* stdio.h 해더파일
* 나눔폰트
* 카메라(cheese)
* Virtualbox
* Parcellite(클립보드)
```swift
sudo apt-get install vlc terminator kolourpaint numlockx git software-properties-common axel libc6-dev fonts-nanum cheese virtualbox parcellite
```
만약 Vlc 설치가 잘 안될 경우
```swift
sudo apt install snap snapd && sudo snap install vlc
```
***
### 터미네이터 설정 
```swift
git clone https://github.com/largesilver/my_linux_mint_setting.git
```
```swift
cd my_linux_mint_setting/
```
```swift
mkdir ~/.config/terminator
```
```swift
cp config ~/.config/terminator/
```
***
### 부팅 시 자동실행 명령어 등록
```swift
sudo cp startup.sh /etc/profile.d/ 
```
***
### 아톰 설치
```swift
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
```
```swift
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
```
```swift
sudo apt-get update
```
```swift
sudo apt-get install atom
```
***
### 크롬 설치
```swift
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
```
```swift
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
```
```swift
sudo apt-get update && sudo apt-get install google-chrome-stable
```
```swift
sudo apt install python3-apt
```
```swift
sudo rm -rf /etc/apt/sources.list.d/google.list
```
***
### 파이어폭스 삭제
```swift
sudo apt-get --purge remove firefox*
sudo rm -r /etc/firefox/
sudo rm -r /usr/lib/firefox/
sudo rm -r /usr/lib/firefox-addons/
sudo rm -r .mozilla
```
***
### TLP Laptop battery saver 설치
```swift
sudo apt-get install -y tlp tlp-rdw && sudo tlp start
```
***
### Slimbook Battery 설치
```swift
sudo add-apt-repository ppa:slimbook/slimbook
```
```swift
sudo apt update && sudo apt install slimbookbattery
```
***
### NeoVim 설치
```swift
sudo apt-get install software-properties-common fuse libfuse2 git python3-pip ack-grep -y
```
```swift
sudo apt-get update && sudo apt-get install neovim
```
```swift
pip3 install --user neovim
```
```swift
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
터미널에서 'v' 만으로 nvim을 실행하고 싶으면 ~/.zshrc 에서 마지막 줄에 alias v='nvim' 를 입력하면 된다.
***
### NeoVim 설정 & 플러그인
우선 colorscheme 부터 설정하자  
(테마는 onedark이다)  
(nvim이 아닌 일반 vim의 colorschme 기본 폴더는 /usr/share/vim/vim81/colors 이며 vim81의 숫자는 버전마다 다를 수 있다.)  
```swift
cd ~
```
```swift
git clone https://github.com/joshdick/onedark.vim.git
```
```swift
sudo cp ~/onedark.vim/colors/onedark.vim /usr/share/nvim/runtime/colors/
```
```swift
sudo cp ~/onedark.vim/autoload/onedark.vim /usr/share/nvim/runtime/autoload/
```
```swift
sudo rm -r onedark.vim
```

테마 설정 후에는 잡다한 설정 및 플러그인들을 설치 하자
```swift
cd my_linux_mint_setting/
```
```swift
mkdir ~/.config/nvim
```
```swift
cp init.vim ~/.config/nvim/
```
우선 init.vim 을 연 뒤에 깃헙의 init.vim을 붙여 넣기 한다.  
복사 붙여넣기 한 뒤에 nvim에서 PlugInstall 하고 UpdateRemotePlugins 를 입력한다.  
(nvim이 아닌 일반 vim 사용할 때는 /etc/vim 에 가서 vimrc 파일을 연다.)  
***
### zsh 및 oh-my-zsh 설치
```swift
sudo apt-get install zsh
```
```swift
chsh -s /usr/bin/zsh
```
```swift
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
```swift
sudo apt install fonts-powerline
```
***
### oh-my-zsh 테마 변경
.zshrc 파일을 열은 뒤에 robbyrussell 테마에서 agnoster 테마로 바꾼다.
```swift
vi ~/.zshrc
```
```swift
ZSH_THEME="robbyrussell"   ==>   ZSH_THEME="agnoster"
```
***
### zsh 플러그인 설치
.zshrc 파일을 열고 71번째 줄에 plugins=(git)를 다음과 같이 고친다.
```swift
plugins=(
    git
    zsh-syntax-highlighting 
    zsh-autosuggestions 
)
```
그 후 다음과 같이 플러그인을 다운로드하고 설정한다.  
**zsh-syntax-highlighting**
```swift
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
**zsh-autosuggestions** 
```swift
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```
***
### oh-my-zsh 폰트 깨짐 방지
```swift
git clone https://github.com/powerline/fonts.git
```
```swift
cd fonts
```
```swift
./install.sh
```
```swift
sudo rm -r ~/fonts/
```
***
### 그놈 터미널 삭제
```swift
sudo apt-get --purge remove gnome-terminal gnome-terminal-data
```
***
### 최종 마무리
```swift
sudo apt-get update && sudo apt-get upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
```
