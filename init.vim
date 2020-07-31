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
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-sandwich'

" Interface
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

" Language
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafoftree/vim-vue-plugin'

" Themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'eemed/sitruuna.vim'
Plug 'liuchengxu/space-vim-theme'
Plug 'srcery-colors/srcery-vim'
Plug 'koirand/tokyo-metro.vim'
Plug 'heyitschun/vim-ariake'
Plug 'heyitschun/vim-boho'
Plug 'heyitschun/vim-miaminights'
Plug 'arzg/vim-colors-xcode'
Plug 'ntk148v/vim-horizon'
Plug 'heyitschun/vim-rainier'
Plug 'heyitschun/vim-seven'

call plug#end()

" Look and feel
set termguicolors
set guifont=Input:h11
colorscheme boho
set background=dark


" Indent guides
let g:indentLine_char='▏'

" Lightline
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'sitruuna',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Line numbers, indentation, rulers
set cursorline
set number
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
