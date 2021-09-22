"==========기본 설정값==========
syntax enable			        "구문강조
set encoding=UTF-8		        "한글 깨짐 방지 
set termguicolors		        "트루 컬러 지원
set number                      "라인 넘버 표시
set hlsearch                    "검색 시 하이라이트 
set ignorecase                  "검색 시 대소문자 무시하기
"set noignorecase               "검색 시 대소문자 구분하기
set showmatch                   "현재 선택된 괄호의 쌍을 표시
set history=1000                "vi 편집기록 기억갯수
set title                       "타이틀바에 현재 편집 중인 파일을 표시
set cursorline                  "커서가 있는 라인을 강조 표시 
set wrap                        "너무 긴 줄 자동 줄바꿈
"set nowrap                     "wrap 해제
set clipboard=unnamed           "시스템의 클립 보드에서 vim 붙여 넣기. 
set fileencodings=utf8,euc-kr   "한글 사용
set noswapfile                  "vim에서 스왑 파일 생성 비활성화
set nobackup                    "vim에서 백업 파일 안 생기게 하기
set smartindent                 "스마트한 들여 쓰기 사용
set autoindent                  "자동 들여 쓰기를 사용
set cindent                     "C언어 자동 들여 쓰기
set tabstop=4                   "탭을 4칸으로
set shiftwidth=4                " >> 또는 << 키로 들여 쓰기 할때 스페이스의 갯수. 기본값 8
set expandtab                   "탭을 스페이스로 바꾸기

"==========플러그인 설치==========
call plug#begin('~/.local/share/nvim/plugged')

"----테마 관련-----
Plug 'joshdick/onedark.vim'                         "onedark 테마 
Plug 'vim-airline/vim-airline'                      "airline(vi 하단하고 상단 꾸밈)              
Plug 'vim-airline/vim-airline-themes'               "airline 테마
"-----자동완성-----
Plug 'vim-scripts/delimitMate.vim'                  "괄호 자동완성 플러그인
Plug 'neoclide/coc.nvim', {'branch': 'release'}     "CoC 자동 완성
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }    "파이썬 자동 완성
Plug 'davidhalter/jedi-vim'                         "자동완성 라이브러리
Plug 'jiangmiao/auto-pairs'                         "따옴표, 괄호, 중괄호, 대괄호 쌍을 자동으로 삭제
"-----NERDTree-----
Plug 'scrooloose/nerdtree'                          "NERDTree 설치
Plug 'jistr/vim-nerdtree-tabs'                      "NERDTree Tabs 설치
Plug 'ryanoasis/vim-devicons'                       "Nerdtree에 예쁜 아이콘을 붙여주는 플러그인
"-----HTML/CSS/JavaScript-----
Plug 'mattn/emmet-vim'  							"html:5 를 입력 후 ctrl y 를 누른 뒤 ,를 누르면 html폼이 완성되는 플러그인
Plug 'ap/vim-css-color'                             "css 소스코딩 하는 동안 색상들을 미리 보는 것
Plug 'ying17zi/vim-live-latex-preview'              "vim-live-latex-previe
"-----기타-----
Plug 'tpope/vim-fugitive'                           "syntax error

call plug#end()

"==========기타==========

"-----플러그인 설치를 위한 설정-----
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

"-----onedakr colorscheme 설정-----                          
colorscheme onedark
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ } 

" 바탕화면을 투명하게 설정 합니다
hi Normal guibg=NONE ctermbg=NONE

"----- Nerd Tree -----
let NERDTreeWinPos = "left"
nmap <F7> :NERDTree<CR>
nnoremap <leader>r :NERDTreeFind<CR>

"----- C언어 컴파일 단축키 -----
map <F9> :! gcc % -o %<<CR>
map <F10> :! ./%<<CR>

"----- Emmet 자동완성 단축키 -----
"let g:user_emmet_leader_key=','

"이거 복사 붙여넣기 끝난 뒤에는 nvim에서 PlugInstall 하고 UpdateRemotePlugins 입력하기(플러그인 삭제는 PlugClean)
