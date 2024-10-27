" Plug-In 시작 (플러그인 설치 경로)
call plug#begin('~/.vim/plugged')

" 설치하고 싶은 플러그인 
" NerdTree 관련.
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" vim 하단에 파일 정보 띄우기
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 파일 및 폴더 탐색
Plug 'ctrlpvim/ctrlp.vim'

" 어셈 문법 강조
Plug 'Shirk/vim-gas'

" 이것저것 편한 설정
Plug 'tpope/vim-sensible'

" [] {} 등 괄호 입력시 자동으로 닫아주는 플러그인
Plug 'jiangmiao/auto-pairs'

"명령어 자동완성 플러그인(inc + <C-a> : #include<>)
Plug 'SirVer/ultisnips'

" 코드 스니펫 지원 플러그인 (C, Python, JS, HTML, CSS, MD ...)
Plug 'honza/vim-snippets'

" Python 구문 강조
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 다양한 언어의 구문 강조
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" 플러그인 시스템 초기화
call plug#end()

" -----------------------------------
"  편집 모드
" -----------------------------------
inoremap jk <ESC>
inoremap kj <ESC>
" -----------------------------------
"  명령 모드 / 키 세팅
" -----------------------------------
"  <F1> 을 통해 NERDTree 와 Tagbar 열기
nnoremap <silent><F1> :NERDTreeToggle<CR><bar>:TagbarToggle <CR> 

" <Ctrl + w> t 를 눌러서 커서를 NERDTree 로 옮기기
nnoremap <silent><C-w>t :NERDTreeFocus<CR>

" <Ctrl + e> 누르면 다음 버퍼로 이동.
nnoremap <silent><C-e> :bp<CR>

" <Ctrl + r> 누르면 이전 버퍼로 이동.
nnoremap <silent><C-r> :bn<CR>

" <Ctrl + q> 누르면 현재 버퍼 닫기.
nnoremap <silent><C-q> :bd<CR>
" -----------------------------------
" 이하 본인의 nvim 설정
" -----------------------------------
" 줄 번호를 표시한다.
set nu

"파일 타입 설정
set encoding=utf-8

" 쉬프트 (<< 혹은 >>) 이동거리
set shiftwidth=4

" 괄호 짝을 강조한다.
set showmatch

" 하위 디렉터리를 모두 path 에 추가한다.
" gf 명령어 사용 시 파일을 인식 가능
set path+=**

" 탐색 문자열 강조
set hlsearch

" 항상 상단에 탭 라인을 출력한다.
set showtabline=2

" GUI-Color 를 사용 가능하도록 설정 (TrueColor)
" cterm 혹은 term 대신 gui 를 통해 색상을 설정할 수 있고
" 16,777,216 종류의 색상 표현 가능(기존 256)
set termguicolors

" 자동 줄바꿈 안함
" set nowrap
set linebreak
set showbreak=+++\

" 검색 시 소문자만 포함된 경우 대소문자 구별없이 검색
set smartcase
" shiftwidth에 따라서 tab기능. 줄 중간에서는 기본탭으로 기능.
set smarttab
" 자동으로 들여쓰기 레벨을 맞춰줌.
set smartindent

" 모든 마우스 기능을 사용
set mouse=a

" mkview 명령어가 저장하는 요소 중
" 하나인 `options` 를 제거
set viewoptions-=options

" 문법이 존재하면
if has("syntax")
	" 문법 강조를 수행
	syntax on	
endif

" 클립보드 복사
set clipboard=unnamedplus "use OS clipboard

" -----------------------------------
"  하이라이트 정의
" -----------------------------------
" 버퍼(창)과 버퍼의 끝(창의 끝)을 투명하게
highlight Normal guibg=NONE
highlight EndOfBuffer guibg=NONE

" 줄번호 배경색은 투명(NULL)하게, 
" 글자는 굵게(bold), 글자색은 하얗게(White)
highlight LineNr guibg=NONE gui=bold guifg=Green

" ------------------------------------
" vim-airline 설정
" ------------------------------------
" powerline-font 활성화
let g:airline_powerline_fonts = 1
" luna 테마 사용
let g:airline_theme = 'luna'
" tabline 에 파일명만 출력 되도록 설정
let g:airline#extensions#tabline#formatter = 'unique_tail'
" 창의 상단에 표시되도록 설정
" let g:airline_statusline_ontop = 1
" 탭라인 허용
let g:airline#extensions#tabline#enabled = 1
" 항상 tabline 을 표시
let g:airline#extensions#tabline#show_tabs = 1

" -----------------------------------
" NERDTree 설정
let g:NERDTreeGitStatusIndicatorMapCustom = {
	\ 'Modified'  :'✹',
	\ 'Staged'    :'✚',
	\ 'Untracked' :'✭',
	\ 'Renamed'   :'➜',
	\ 'Unmerged'  :'═',
	\ 'Deleted'   :'✖',
	\ 'Dirty'     :'✗',
	\ 'Ignored'   :'☒',
	\ 'Clean'     :'✔︎',
	\ 'Unknown'   :'?',
\ }
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeDirArrowExpandable = ''
let g:DevIconsDefaultFolderOpenSymbol = ''
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''

"let g:NERDTreeDirArrowCollapsible = ''
"let g:NERDTreeDirArrowExpandable = ''

let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error

let g:NERDTreeExtensionHighlightColor['c'] = s:lightGreen " sets the color of css files to blue
let g:NERDTreeExtensionHighlightColor['h'] = s:brown " sets the color of css files to blue
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" -----------------------------------
" 창 크기(가로)를 설정
let g:NERDTreeWinSize=30
" -----------------------------------
" tagbar 설정
" -----------------------------------
" tagbar 생성 시 우측 하단에 위치하게끔 생성
let g:tagbar_position = 'rightbelow'
" -----------------------------------

" 커서 아래의 토큰을 강조
autocmd CursorHold * silent call CocActionAsync('highlight')

