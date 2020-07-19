" To see what base directories are used go to: 
" https://neovim.io/doc/user/starting.html#base-directories

" Plugins
call plug#begin('~/AppData/Local/nvim-data/plugged')

" Integration
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-sandwich'

" Interface
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

" Language
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafoftree/vim-vue-plugin'

" Themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'eemed/sitruuna.vim'
Plug 'sainnhe/sonokai'
Plug 'heyitschun/vim-boho'
Plug 'arzg/vim-colors-xcode'
Plug 'ntk148v/vim-horizon'
Plug 'heyitschun/vim-rainier'

call plug#end()

" Look and feel
set termguicolors
set guifont=Code\ New\ Roman:h13
colorscheme PaperColor

"" Indent guides
let g:indentLine_char = '▏'

" Lightline
set noshowmode
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Line numbers, indentation, rulers
set number
set colorcolumn=80

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

"" NERDTree toggle
map <C-m> :NERDTreeToggle<CR>

"" fzf Fuzzy finder
map ; :Files<CR>

" Language settings
let g:vim_vue_plugin_use_sass = 1
