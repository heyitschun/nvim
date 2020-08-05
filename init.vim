" To see what base directories are used go to: 
" https://neovim.io/doc/user/starting.html#base-directories

" Plugins
call plug#begin('~/AppData/Local/nvim-data/plugged')

" Integration
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
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
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafoftree/vim-vue-plugin'

" Themes
Plug 'atelierbram/Base2Tone-vim'
Plug 'heraldofsolace/nisha-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'eemed/sitruuna.vim'
Plug 'koirand/tokyo-metro.vim'
Plug 'heyitschun/vim-ariake'
Plug 'heyitschun/vim-boho'
Plug 'heyitschun/vim-miaminights'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'heyitschun/vim-rainier'
Plug 'heyitschun/vim-seven'
Plug 'connorholyday/vim-snazzy'
Plug 'lifepillar/vim-solarized8'

call plug#end()

" Look and feel
syntax on
set termguicolors
set guifont=Consolas:h13
colorscheme snazzy
set background=dark

" Indent guides
let g:indentLine_char='│'

" Lightline
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'snazzy',
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

" NERDTree
map <C-m> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20
let g:NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let g:NERDTreeIndicatorMapCustom = {
    \ 'Modified'  : '~',
    \ 'Staged'    : '+',
    \ 'Untracked' : '*',
    \ 'Renamed'   : '»',
    \ 'Unmerged'  : '═',
    \ 'Deleted'   : '-',
    \ 'Dirty'     : 'x',
    \ 'Clean'     : 'ø',
    \ 'Ignored'   : '*',
    \ 'Unknown'   : '?'
    \ }

"" CtrlP
map ; :CtrlPMixed<CR>
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'

" Language settings
let g:vim_vue_plugin_use_sass=1
