" To see what base directories are used go to: 
" https://neovim.io/doc/user/starting.html#base-directories
"
" Plugins
call plug#begin(stdpath('data') . '/plugged')

" Integration
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'danro/rename.vim'
Plug 'takac/vim-hardtime'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-sandwich'

" Interface
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

" Languages
Plug 'leafgarland/typescript-vim'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafoftree/vim-vue-plugin'

" Themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'eemed/sitruuna.vim'
Plug 'koirand/tokyo-metro.vim'
Plug 'heyitschun/vim-miaminights'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'heyitschun/vim-seven'
Plug 'connorholyday/vim-snazzy'

call plug#end()

" Look and feel
set termguicolors
set guifont=Consolas:h13
colorscheme sitruuna
" set background=dark

" Indent guides
let g:indentLine_char='│'

" Lightline "
set noshowmode
let g:lightline= {
      \ 'colorscheme': 'sitruuna',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'lineinfo', 'readonly', 'modified' ] ],
      \   'right': [ [ 'filename', 'gitbranch' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Line numbers, indentation, rulers
set cursorline
set relativenumber
highlight LineNr ctermfg=DarkGrey gui=NONE guifg=#6c6c6c guibg=NONE
highlight ColorColumn ctermbg=250 guibg=#3E3F3C
set colorcolumn=80
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
let g:indentLine_concealcursor=""

" Word wrap
set formatoptions=1
set lbr

" Keymappings
noremap <C-w> <C-y>

" Hardtime
let g:hardtime_default_on = 1
let g:hardtime_timeout = 1000
let g:hardtime_maxcount = 4

"" Windows clipboard
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y

"" Better splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

"" CtrlP
map ; :CtrlPMixed<CR>
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'

" Language settings
let g:vim_vue_plugin_use_sass=1
