" plugin management
"################################################################################
call plug#begin("~/.config/nvim/plugged")

Plug 'NLKNguyen/papercolor-theme'

Plug 'vim-airline/vim-airline'

Plug 'airblade/vim-gitgutter'

Plug 'enricobacis/paste.vim'

Plug 'neovim/nvim-lspconfig'

Plug 'kabouzeid/nvim-lspinstall'

" begin telescope related stuff

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" needs os-level tooling as well
" - ripgrep (rg binary)
" - fd-find (fd binary)

" end telescope related stuff

call plug#end()

