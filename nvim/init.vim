" Plug-In 시작 (플러그인 설치 경로)
call plug#begin('~/.vim/plugged')

" 설치하고 싶은 플러그인 (예, NERDTree)
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
# Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nanotech/jellybeans.vim'

" 플러그인 시스템 초기화
call plug#end()

" -----------------------------------
"  편집 모드
" -----------------------------------
inoremap jk <ESC>
inoremap kj <ESC>
" -----------------------------------
"  명령 모드
" -----------------------------------
"  <F1> 을 통해 NERDTree 와 Tagbar 열기
nnoremap <silent><F1> :NERDTreeToggle<CR><bar>:TagbarToggle <CR> 

" <Ctrl + w> t 를 눌러서 커서를 NERDTree 로 옮기기
nnoremap <silent><C-w>t :NERDTreeFocus<CR>

" -----------------------------------
" 이하 본인의 nvim 설정
" -----------------------------------
" 줄 번호를 표시한다.
set nu
" 쉬프트 (<< 혹은 >>) 이동거리
set shiftwidth=2
" 괄호 짝을 강조한다.
set showmatch

" 하위 디렉터리를 모두 path 에 추가한다.
" gf 명령어 사용 시 파일을 인식 가능
set path+=**

" 탐색 문자열 강조
set hlsearch

" 항상 상단에 탭 라인을 출력한다.
set showtabline=2

if has('nvim')			" nvim 을 사용 중이라면
	set inccommand=nosplit	" nvim live %s substitute (실시간 강조)
endif

" GUI-Color 를 사용 가능하도록 설정 (TrueColor)
" cterm 혹은 term 대신 gui 를 통해 색상을 설정할 수 있고
" 16,777,216 종류의 색상 표현 가능(기존 256)
set termguicolors

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

" 컬러스킴(문법 강조 색상) - 현재 jellybeans
colorschem jellybeans
" colorschem gruvbox

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
" -----------------------------------
" 창 크기(가로)를 설정
let g:NERDTreeWinSize=30
" -----------------------------------
" tagbar 설정
" -----------------------------------
" tagbar 생성 시 우측 하단에 위치하게끔 생성
let g:tagbar_position = 'rightbelow'
" -----------------------------------
