# My Linux Mint Setting
This is my personal Linux Mint setting. 
***
### 단축키 설정
(설정 > 키보드 > 단축키)를 들어간다.
* 루킹글래스 단축키 바꾸기 (분류 > 일반 > 문제 해결하기 > 루킹글래스 표시)에서 (Super+L > Alt+Super+L)로 설정한다.  
* 창 최소화 단축키는 (분류 > 창 > 창 최소화)에서 (Super+M)로 설정한다.
* 창 최대화 단축키는 (분류 > 창 > 창 최대화 토글)에서 (Ctrl+Alt+J)로 추가 설정한다.
* 창 닫기 단축키는 (Categories>Windows>Close windows)에서 (Super+X)로 추가 설정한다.
* 웹 브라우저 단축키는 (Categories>Launchers>Launch web browser)에서 (Super+E)로 설정한다.
* 홈 폴더 단축키는 (Categories>Launchers>Home folder)에서 (Super + F)로 설정한다,
* 터미네이터 단축키는 우선 (설정 >기본 애플리케이션)으로 가서 기본 애플리케이션 터미널을 터미네이터로 선택한다.
그 후 (설정 > 키보드 > 단축키)에서 (분류 > 런처 > 터미널 실행)에서 (Ctrl+Alt+T > Super+T)로 설정한다.  
* 다운로드 폴더 열기 단축키는 (Categories>Launchers>Custom Shortcuts)에서 (Add custom shortcut)를 누른 뒤 Name 은 "다운로드 폴더 열기"로 Command는 "nemo Downloads"로 하고 단축키는 (Super+)로 설정한다.
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
* Parcellite(클립보드)(단축키는 Ctrl+Alt+H)
* barrier
```swift
sudo apt-get install vlc terminator kolourpaint numlockx git software-properties-common axel libc6-dev fonts-nanum cheese virtualbox parcellite barrier
```
만약 Vlc 설치가 잘 안될 경우
```swift
sudo apt install snap snapd && sudo snap install vlc
```
***
### Nerd Fonts 설치
```swift
sudo wget -P /usr/share/fonts https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf
```
```swift
sudo fc-cache -f -v
```
***
### 터미네이터 설정 
```swift
git clone https://github.com/largesilver/my_linux_mint_setting.git
```
```swift
mkdir ~/.config/terminator
```
```swift
cp ~/my_linux_mint_setting/config ~/.config/terminator/
```
***
### 부팅 시 자동실행 명령어 등록
```swift
sudo ~/my_linux_mint_setting/startup.sh /etc/profile.d/ 
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
sudo apt-get update && sudo apt-get install atom
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
sudo apt-get update && sudo apt install python3-apt && sudo apt-get install google-chrome-stable
```
```swift
sudo rm -rf /etc/apt/sources.list.d/google.list
```
***
### 파이어폭스 삭제
```swift
sudo apt-get --purge remove firefox*
```
```swift
sudo rm -r /etc/firefox/ /usr/lib/firefox/ /usr/lib/firefox-addons/ /home/leedaeeun/.mozilla
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
### Node.Js 설치
```swift
sudo apt-get install curl
```
```swift
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
```
```swift
sudo apt-get install -y nodejs
```
```swift
sudo apt-get install build-essential
```
PPA를 통해서 Node.JS를 설치하면 NodeJS 뿐만 아니라 npm도 같이 설치되는데, npm install시 에러가 나는 것을 방지하기 위해 build-essential을 설치해준다.
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
### NeoVim 설정
```swift
mkdir ~/.config/nvim
```
```swift
cp ~/my_linux_mint_setting/init.vim ~/.config/nvim/
```
PlugInstall 하고 UpdateRemotePlugins 를 입력한다.  
(nvim이 아닌 일반 vim 사용할 때는 /etc/vim 에 가서 vimrc 파일을 수정한다.)  
***
### CoC 설정하기
**[clangd](https://clangd.llvm.org/installation.html "clangd") 설치하기(c/c++ 자동완성)**
```swift
sudo apt-get install clangd-12
```
```swift
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
```
**[coc-jedi](https://github.com/pappasam/coc-jedi "coc-jedi") 설정(파이썬 자동완성)**
```swift
cp ~/my_linux_mint_setting/coc-settings.json ~/.config/nvim/
```
**CoC 적용하기**
```swift
CocInstall coc-clangd coc-python coc-jedi coc-sh coc-vimlsp
```
nvim에서 ConInstall 을 이용해서 위의 명렁어를 입력한다.

전반적인 참조 사이트  
https://www.chrisatmachine.com/Neovim/04-vim-coc/  
https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions              <- 원하는 coc 있을 때는 여기 주로 참조하기  
https://johngrib.github.io/wiki/vim-auto-completion/  
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
