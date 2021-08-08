# My Linux Mint Setting
This is my personal Linux Mint setting. 
***
### 기본 단축키
**일반**
|단축키|설정값|
|---|---|
|창 선택 화면 보기|Ctrl+Alt+아래 화살표|
|작업 공간 선택 화면 보기|Ctrl+Alt+위 화살표, Alt+F1|
|바탕화면 보기|Super+D|
|데스크릿 보기|Super+S|
|열린 창들 둘러보기|Alt+Tab|
|명령어 창 실행|Alt+F2|

**일반 > 문제 해결하기**
|단축키|설정값|
|---|---|
|루킹글래스 표시|Super+L|

**창**
|단축키|설정값|
|---|---|
|창 최대화 취소|Alt+F5|
|창 닫기|Alt+F4|
|사용 중인 창의 메뉴 보기|Space|
|창 최대화 토글|Alt+F10|

**창 > 위치**
|단축키|설정값|
|---|---|
| 창 크기 조절 | Alt+F8 |
| 창 이동 | Alt+F7 |

**창 > 타일링과 스내핑**
|단축키|설정값|
|---|---|
|타일을 왼쪽으로 붙임|Super+왼쪽 화살표|
|타일을 오른쪽으로 붙임|Super+오른쪽 화살표|
|타일을 위로 붙임|Super+위 화살표|
|타일을 아래로 붙임|Super+아래 화살표|
|스냅해서 왼쪽으로 붙임|Ctrl+Super+왼쪽 화살표|
|스냄에서 오른쪽으로 붙임|Ctrl+Super+오른쪽 화살표|
|스냅해서 위로 붙임|Ctrl+Super+위 화살표|
|스냅해서 아래로 붙임|Ctrl+Super+아래 화살표|

**창 > 작업 공간 사이**
|단축키|설정값|
|---|---|
|창을 왼쪽 작업 공간으로 이동|Shift+Ctrl+Alt+왼쪽 화살표|
|창을 오른쪽 작업 공간으로 이동|Shift+Ctrl+Alt+오른쪽 화살표|

**창 > 모니터 사이**
|단축키|설정값|
|---|---|
|왼쪽 모니터로 창 옮기기|설정값|Shift+Super+왼쪽 화살표|
|오른쪽 모니터로 창 옮기기|Shift+Super+오른쪽 화살표|
|위 모니터로 창 옮기기|Shift+Super+위 화살표|
|아래 모니터로 창 옮기기|Shift+Super+아래 화살표|

**작업 공간**
|단축키|설정값|
|---|---|
|왼쪽 작업 공간으로 이동|Ctrl+Alt+왼쪽 화살표|
|오른쪽 작업 공간으로 이동|Ctrl+Alt+오른쪽 화살표|

**시스템**
|단축키|설정값|
|---|---|
|로그아웃|Ctrl+Alt+Delete|
|종료|Ctrl+Alt+End|
|화면 잠금|Ctrl+Alt+L|
|시나몬 다시 시작|Ctrl+Alt+Escape|

**시스템 > 하드웨어**
|단축키|설정값|
|---|---|
|디스플레이장치 다시 감지|Super+P|
|방향 고정|Super+O|

**창 > 스크린샷과 화면 녹화**
|단축키|설정값|
|---|---|
|영역 스크린샷 찍기|Shift+Print|
|클립보드로 영역 스크린샷 복사|Shift+Ctrl+Print|
|스크린샷 찍기|Print|
|클립보드로 스크린샷 복사|Ctrl+Print|
|창 스크린샷 찍기|Alt+Print|
|클립보드로 창 스크린샷 복사|Ctrl+Alt+print|
|데스크톱 녹화 표시|Shift+Ctrl+Alt+R|

데스크톱 녹화 표시는 시나몬을 다시 시작해야 합니다.

**런처**
|단축키|설정값|
|---|---|
|터미널 실행|Ctrl+Alt+T|
|홈 폴더|Super+E|

**편리한 기능**
|단축키|설정값|
|---|---|
|확대|Alt+Super+=|
|축소|Alt+Super+-|










***
### 단축키 설정
설정에서  (키보드 > 단축키)를 들어간다.
* 루킹글래스 단축키 바꾸기 (일반 > 문제 해결하기 > 루킹글래스 표시)에서 (Super+L > Alt+Super+L)로 설정
•창 최대화 단축키는 (Categories>Windows>Maximize windows)에서 (Super+Up)으로 설정한다.
•창 닫기 단축키 추가는(Categories>Windows>Close windows)에서 (Super+X)로 설정한다.
•웹 브라우저 단축키는 (Categories>Launchers>Launch web browser)에서 (Super+E)로 설정한다.
•홈 폴더 단축키는 (Categories>Launchers>Home folder)에서 (Super + F)로 설정한다,
•터미네이터 단축키는 (Categories>Launchers>Custom Shortcuts)에서 (Add custom shortcut)를 누른 뒤 Name 하고 Command를 terminator로 하고 단축키는 (Super+T)로 설정한다.
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
