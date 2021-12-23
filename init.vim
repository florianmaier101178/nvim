" plugin management
source ~/.config/nvim/plugins.vim

" color scheme
"################################################################################
colorscheme PaperColor

" syntax highlighting
syntax enable

" leader key
"################################################################################
:let mapleader = ","        " remap leader key from \ to ,

" moving text
"################################################################################
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

" general 
"################################################################################
set fileformats="unix,dos,mac"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.exe,*.class,*.jar

" searching
" show search matches as you type
set incsearch
set hlsearch
" ignore case when searching
set ignorecase
" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" don't beep
set visualbell
set noerrorbells

set number
set relativenumber
set cursorline

set laststatus=2

if exists('+colorcolumn')
	set colorcolumn=120
endif

" indentation
set autoindent 
set copyindent
set smartindent

" spaces and tabs
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
" number of spaces to use for autoindenting
set shiftwidth=4
"use multiple of shiftwidth when indenting with '<' and '>' 
set shiftround
" don't wrap lines
set nowrap

" linebreak
set linebreak
set showbreak=+++

" with showmatch, when your cursor moves over a parenthesis-like character, the matching one will be highlighted as well.
set showmatch
" always show what mode we're currently editing in
set showmode

" Vim loves to redraw the screen during things it probably doesn't need to—like in the middle of macros.
" This tells Vim not to bother redrawing during these scenarios, leading to faster macros.
set lazyredraw

" when in insert mode, press <F2> to go to paste mode, where you can paste mass data that won't be autoindented
set pastetoggle=<F2>

" automatically reload files changed outside of Vim
set autoread

" hide buffers instead of closing them. 
" this means that the current buffer can be put to background without being written; 
" and that marks and undo history are preserved
set hidden
" reveal already opened files from the quickfix window instead of opening new buffers
set switchbuf=useopen
" remember more commands and search history
set history=1000
" use many levels of undo
set undolevels=1000

" normal OS clipboard interaction
set clipboard=unnamed                                                                                                                                                                                                
" copy and paste via paste.vim
" <leader>v -> paste content of clipboard to at cursor position (mark with mouse)
" <leader>y -> copies current selection to system clipboard (usage in bash, middle mouse button)

" undo files
set undofile
set undodir=~/.vim/.undo/,~/tmp,/tmp

" swap files
set directory=~/.vim/.tmp.~/tmp,/tmp

