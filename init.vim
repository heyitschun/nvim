" To see what base directories are used go to: 
" https://neovim.io/doc/user/starting.html#base-directories

" Plugins
call plug#begin('~/AppData/Local/nvim-data/plugged')

" Interface
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

" Themes
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'NLKNguyen/papercolor-theme'
Plug 'eemed/sitruuna.vim'
Plug 'sainnhe/sonokai'
Plug 'heyitschun/vim-boho'
Plug 'ntk148v/vim-horizon'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'heyitschun/vim-rainier'
Plug 'machakann/vim-sandwich'
Plug 'posva/vim-vue'

call plug#end()

" Look and feel
set termguicolors
set guifont=Code\ New\ Roman:h13
colorscheme sitruuna

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

" Word wrap
set formatoptions=1
set lbr

" Keymappings
"" Windows clipboard
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y

