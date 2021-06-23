"================================= onedark ColorScheme 관련된 줄 =================================
" https://www.chrisatmachine.com/Neovim/03-vim-themes  참조 
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) 
  augroup END
endif

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

syntax on                       " 형식별 구문 강조 표시
colorscheme onedark             " 테마 설정

if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

"================================= 일반 설정 =================================
"https://seulcode.tistory.com/272  참조

filetype plugin on              "vim 기본 설정 영역

let g:mapleader = ","           "리더키를 콤마로 설정

set number                      "라인 넘버 표시
set hlsearch                    "검색 시 하이라이트 
set ignorecase                  "검색 시 대소문자 무시하기
"set smartcase                  "검색 시 대소문자 무시하기. set ignorecase 와의 차이점은 검색어에 대문자가 있을 경우 자동으로 대문자만 검색한다.
"set noignorecase               "검색 시 대소문자 구분하기
set showmatch                   "현재 선택된 괄호의 쌍을 표시
set history=1000                "vi 편집기록 기억갯수
set title                       "타이틀바에 현재 편집 중인 파일을 표시
set cursorline                  "커서가 있는 라인을 강조 표시 
"set mouse=a                     "마우스 커서 사용. 'a' to all mode, n, v, i, c to Normal, Visual, Insert, Command mode
set wrap                        "너무 길어서 화면에 전부 표시할 수 없는 줄을 다음줄로 자동으로 줄바꿈을 하여 표시
"set nowrap                     "wrap 해제
set clipboard=unnamed           "시스템의 클립 보드에서 vim 붙여 넣기. 
"set set clipboard=unnamedplus  "set clipboard=unnamed 하고 똑같은 것
set fileencodings=utf8,euc-kr   "한글 사용

"================================= 자동 백업 관련 =====================================
set noswapfile                  "vim에서 스왑 파일 생성 비활성화
set nobackup                    "vim에서 백업 파일 안 생기게 하기

"================================= 들여 쓰기 관련 ======================================
set smartindent                 "스마트한 들여 쓰기 사용
set autoindent                  "자동 들여 쓰기를 사용
set cindent                     "C언어 자동 들여 쓰기
set tabstop=4                   "탭을 4칸으로
set shiftwidth=4                " >> 또는 << 키로 들여 쓰기 할때 스페이스의 갯수. 기본값 8
set expandtab                   "탭을 스페이스로 바꾸기

"================================= Tap & Space ======================================
nmap <leader>l <Esc>:set list!<CR>
highlight SpecialKey cterm=None ctermfg=grey
map <leader>2 <Esc>:retab<CR>:set ts=4<CR>:set noexpandtab<CR>:retab!<CR>:set expandtab<CR>:set ts=2<CR>:set sw=2<CR>:retab!<CR>
map <leader>4 <Esc>:retab<CR>:set ts=2<CR>:set noexpandtab<CR>:retab!<CR>:set expandtab<CR>:set ts=4<CR>:set sw=4<CR>:retab!<CR>
set listchars=tab:>·
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:·
set listchars+=space:·
set fillchars+=vert:\│          "Make vertical split separator full line

"================================ Auto command ===================================

autocmd InsertEnter * :set nocul                    "Remove cursorline highlight
autocmd InsertLeave * :set cul                      "Add cursorline highlight in normal mode
autocmd FileType html setlocal sw=2 ts=2            "Set indentation to 4 for html, css, scss, js
autocmd FileType css setlocal sw=2 ts=2
autocmd FileType scss setlocal sw=2 ts=2
autocmd FileType js setlocal sw=2 ts=2

"================================= 플러그인 ========================================
"자동 완성 플러그인. 
"Deoplete은 사용자의 입력을 prefix로 처리해서 예상되는 입력값들을 추천해주는 플러그인
call plug#begin('~/.vim/plugged')                   "deoplete 설치
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
"-------------------------------- 세부 플러그인 --------------------------------
Plug 'vim-scripts/delimitMate.vim'                 "괄호 자동완성 플러그인
Plug 'Shougo/neco-syntax'                           "vim 구문 파일을 통한 자동완성
Plug 'Shougo/deoplete-clangx'                       "c/c++ 자동완성
Plug 'deoplete-plugins/deoplete-jedi'               "python 자동완성
Plug 'Shougo/neco-vim'                              "CoC로 코드 자동완성
Plug 'davidhalter/jedi-vim'                         "자동완성 라이브러리
Plug 'scrooloose/nerdtree'                          "NERDTree 설치
Plug 'jistr/vim-nerdtree-tabs'                      "NERDTree Tabs 설치
Plug 'jiangmiao/auto-pairs'                         " 따옴표, 괄호, 중괄호, 대괄호 쌍을 자동으로 삭제
Plug 'tpope/vim-fugitive'                           "syntax error
Plug 'joshdick/onedark.vim'                         "onedark ColorScheme 플러그인
Plug 'vim-airline/vim-airline'                      "airline 관련 플러그인
Plug 'vim-airline/vim-airline-themes'               "airline 테마 관련 플러그인
Plug 'mattn/emmet-vim'  							"html:5 를 입력 후 ctrl y 를 누른 뒤 ,를 누르면 html폼이 완성되는 플러그인
Plug 'ap/vim-css-color'                             "css 소스코딩 하는 동안 색상들을 미리 보는 것
Plug 'ying17zi/vim-live-latex-preview'              "vim-live-latex-previe

call plug#end()

let g:deoplete#enable_at_startup = 1

"----- 유용하지만 설치 안 한 플러그인 -----
" vim-surround                                        "이거 몰라... 알아보자
" Plug 'ryanoasis/vim-devicons'                       "Nerdtree에 예쁜 아이콘을 붙여주는 플러그인
" Plug 'mhinz/vim-startify'                         "https://vimawesome.com/plugin/vim-startify 
" Plug 'nightsense/simplifysimplify'

"================================= Plugins setting ==================================
"----- Nerd Tree -----
let NERDTreeWinPos = "left"
nmap <F7> :NERDTree<CR>
nnoremap <leader>r :NERDTreeFind<CR>

"----- deoplete -----
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" ----- jedi vim -----
let g:jedi#show_call_signatures = "0"   "jedi-vim slowdown

" ----- ale -----
let g:ale_lint_on_save = 1                                                      "Lint when saving a file
let g:ale_sign_error = '✖'                                                      "Lint error sign
let g:ale_sign_warning = '⚠'                                                    "Lint warning sign
let g:ale_statusline_format =[' %d E ', ' %d W ', '']                           "Status line texts
let g:ale_linters = {'javascript': ['eslint']}                                  "Lint js with eslint
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}                       "Fix eslint errors
" ALEFix, ALEFixSuggest로 fix 사용 가능

"----- airline -----
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline_theme = 'onedark'

set showtabline=2
set noshowmode

"----- C언어 컴파일 단축키 -----
map <F9> :! gcc % -o %<<CR>
map <F10> :! ./%<<CR>

"----- Emmet 자동완성 단축키 -----
let g:user_emmet_leader_key=','

"이거 복사 붙여넣기 끝난 뒤에는 nvim에서 PlugInstall 하고 UpdateRemotePlugins 입력하기(플러그인 삭제는 PlugClean) 
