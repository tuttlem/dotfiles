
set nocompatible
set showcmd
set foldmethod=marker

filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

set autoindent
set expandtab
set smarttab

set shiftwidth=2
set softtabstop=2

if version >= 700
   set spl=en spell
   set nospell
endif

set wildmenu
set wildmode=list:longest,full

set backspace=2
set number
set ignorecase
set smartcase

set incsearch
set hlsearch

let g:clipbrdDefaultReg = '+'

set nohidden

highlight MatchParen ctermbg=4

set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>
" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>
" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

nnoremap <silent> <F8> :execute RotateColorTheme()<CR>

" Edit vimrc \ev
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>

" Edit gvimrc \gv
nnoremap <silent> <Leader>gv :tabnew<CR>:e ~/.gvimrc<CR>

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Space will toggle folds!
nnoremap <space> za

let g:rct_completion_use_fri = 1
"let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_ViewRule_pdf = "kpdf"

filetype plugin indent on
syntax on
set t_Co=256

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

execute pathogen#infect()

map <C-n> :NERDTreeToggle<CR>

" let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1

let g:airline_theme='wombat'

colorscheme desert

" disable the damn mouse!!
set mouse=

