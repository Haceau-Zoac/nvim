set nocompatible
syntax on
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256
filetype indent on

set autoindent
set tabstop=2
set expandtab
set softtabstop=0
set shiftwidth=0

set number
set cursorline
set textwidth=80
set nowrap
set scrolloff=5
set sidescrolloff=15
set laststatus=2
set ruler

set showmatch
set hlsearch
set incsearch

set nobackup
set noswapfile
set noerrorbells
set wildmenu
set wildmode=longest:list,full

lua require('plugins')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/luasnip')
lua require('plugin-config/nvim-treesitter')
lua require('lsp/nvim-cmp')
lua require('lsp/setup')
lua require('keybindings')

autocmd BufRead,BufNewFile *.mpp set filetype=mpp
autocmd BufRead,BufNewFile *.ixx set filetype=ixx

colorscheme tokyonight

