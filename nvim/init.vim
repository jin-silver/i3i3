call plug#begin()
    Plug 'luochen1990/rainbow'
    Plug 'psliwka/vim-smoothie'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'sainnhe/everforest'
    Plug 'flazz/vim-colorschemes'
    Plug 'xolox/vim-colorscheme-switcher'
    Plug 'xolox/vim-misc'
    Plug 'tpope/vim-commentary'
    Plug 'ap/vim-css-color'
    Plug 'sheerun/vim-polyglot'
call plug#end()

" colorscheme
colo everforest
autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set filetype=sh | endif

" maybe set leader key?
let mapleader = " " " space is the leader key now

filetype plugin on
filetype indent on
filetype on
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=10
set incsearch
set ignorecase
set smartcase
set wildmenu
set cursorline
set nu
set autoindent
set smartindent
set hlsearch
set relativenumber

hi CursorLine       cterm=none          ctermbg=239    ctermfg=none
hi Normal           ctermbg=none
hi LineNr           ctermfg=yellow
hi CursorLineNr     ctermbg=239    ctermfg=yellow
hi normal           ctermfg=5
hi EndOfBuffer      ctermbg=none
" esc
inoremap jj <esc>
nnoremap <CR> :noh<CR>
nnoremap <leader>n <C-W>w
" copy & paste
noremap <Leader>y "+y
noremap <Leader>p "+p

" rainbow bracket
let g:rainbow_active = 1


" NERDTree shortcuts
nnoremap <F10> :NERDTreeToggle<CR>


" Goyo
"
nnoremap <leader>z :Goyo<CR>
function! s:goyo_enter()
    set noshowmode
    set noshowcmd
    set scrolloff=999
    hi CursorLine   ctermbg=none
    hi CursorLineNr ctermbg=239
    Limelight
endfunction

function! s:goyo_leave()
    set showmode
    set showcmd
    set scrolloff=5
    hi CursorLine       cterm=none          ctermbg=239    ctermfg=none
    hi Normal           ctermbg=none
    hi LineNr           ctermfg=yellow
    hi CursorLineNr     ctermbg=239    ctermfg=yellow
    hi normal           ctermfg=5
    hi EndOfBuffer      ctermbg=none
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Limelight
let g:limelight_conceal_ctermfg = 'gray'


