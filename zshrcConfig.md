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
### alias 설정
```swift
alias powerup="sudo apt-get update && sudo apt-get upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y"
alias rrm="mv -t /home/leedaeeun/.local/share/Trash/files"
```
.zshrc 파일에서 위의 alias 라인 삽입
***
### unzip 한글 깨짐 방지
```swift
export UNZIP="-O cp949"
export ZIPINFO="-O cp949"
```
.zshrc 파일에서 위의  라인 삽입
***
