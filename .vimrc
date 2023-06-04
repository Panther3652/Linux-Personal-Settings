set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" 
" Installed Plugins
"

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'Valloric/YouCompleteMe'
Plugin 'frazrepo/vim-rainbow'
Plugin 'nvie/vim-flake8'
Plugin 'machakann/vim-highlightedyank'
Plugin 'sainnhe/sonokai'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'davidhalter/jedi-vim'
Plugin 'Raimondi/delimitMate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"
" Vim Settings
"

set background=dark
colorscheme molokai
set hi=1000   " 명령어 갯수 기록
set nu   " 줄 번호 표시
set nuw=5   " 줄 번호 표시 너비
set ru   " 오른쪽 하단 커서 위치 항상 표시
" 파일 타입 설정
set encoding=utf-8
set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,ucs-2le,latin1
set bs=indent,eol,start   " 백스페이스 사용
" 탭 설정
set ts=4
set sw=4
set sts=0
autocmd FileType make setlocal noexpandtab " Makefile은 tab 문법이기 때문에 스페이스 대체 안함.
" 자동 줄바꿈 안 함
set linebreak
set showbreak=+++\
" 자동 들여쓰기 설정
set autoindent
set cindent
" 스마트 세팅
set smarttab
set smartcase
set smartindent
set magic   " magic 기능 사용
set sol   " 이동 동작 시 줄의 시작으로 자동 이동
set sel=exclusive   " 비주얼모드 동작 설정
set mps+=<:>   " 괄호짝 찾기에서 <>도 찾도록 추가
set hls   " 검색어 강조
set scs   " 스마트한 대소문자 구별 기능 사용
set noignorecase   " 대소문자 구분
set ls=2   " 항상 status 라인을 표시
sy enable   " 파일 형식에 따른 syntax 하이라이팅 켜기
set showmatch   " 괄호 매치
set mouse=a   " 마우스 자동
set clipboard=unnamedplus   " 클립보드 복사
set incsearch   " 키워드 검색 시 점진적 검색
set noshowmode
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"
" Plugin Settings
"

" NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" CrtlP
set wildignore=*/node_modules/*,*/tmp/*,*/build/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_map = '<c-p>'

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1 "버퍼 목록 켜기
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" 파일명만 출력
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_highlighting_cache = 1
let g:airline_powerline_fonts = 1
let g:airline_theme= 'minimalist'
let g:airline_section_y = '' 
let g:airline_section_warning= '' "마지막 status창 사용 안함
" 버퍼 목록 켜기
" 이 옵션은 버퍼를 수정한 직후 버퍼를 감춰지도록 한다.
" 이 방법으로 버퍼를 사용하려면 거의 필수다.
set hidden

" Vim-Commentary
nmap gc <Plug>Commentary
vmap gc <Plug>Commentary

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_invoke_completion = '<c-space>'

" Snonokai
if has('termguicolors')
	set termguicolors
endif
let g:sonokai_style = 'atlantis'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1

" Vim-Indent-Guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" delimitMate
let delimitMate_expand_cr=1

" Jedi-Vim
let g:jedi#show_call_signatures=0
let g:jedi#popup_select_first="0"
let g:jedi#force_py_version=3
