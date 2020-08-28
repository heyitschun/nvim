"To see what base directories are used go to: 
"https://neovim.io/doc/user/starting.html#base-directories

"Plugins
call plug#begin(stdpath('data') . '/plugged')

"Integration
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'danro/rename.vim'
Plug 'easymotion/vim-easymotion'
Plug 'takac/vim-hardtime'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-sandwich'
Plug 'vimwiki/vimwiki'

"Interface
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

"Languages
Plug 'leafgarland/typescript-vim'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafoftree/vim-vue-plugin'

"Themes
Plug 'morhetz/gruvbox'
Plug 'bignimbus/pop-punk.vim'
Plug 'eemed/sitruuna.vim'
Plug 'jacoborus/tender.vim'
Plug 'koirand/tokyo-metro.vim'
Plug 'ntk148v/vim-horizon'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'heyitschun/vim-seven'
Plug 'connorholyday/vim-snazzy'

call plug#end()

"Look and feel
set termguicolors
set guifont=Input:h12
colorscheme gruvbox
"set background=dark

"Indent guides
let g:indentLine_char='│'

"Lightline
set noshowmode
let g:lightline= {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'lineinfo', 'readonly', 'modified' ] ],
      \   'right': [ [ 'filename', 'gitbranch' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filename': 'FileNameForLightLine'
      \ },
      \ }

function! FileNameForLightLine()
  return expand('%')
endfunction

"Line numbers, indentation, rulers
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

"Word wrap
set formatoptions=1
set lbr

"Keymappings
let mapleader = " "

""Navigation
noremap <C-w> <C-y>

""Nerdcommenter
nmap <leader>/ <Plug>NERDCommenterToggle

""CoC GoTo Navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

""Easymotion
map <leader><leader>g <Plug>(easymotion-bd-w)

""Hardtime
let g:hardtime_default_on = 1
let g:hardtime_timeout = 1000
let g:hardtime_maxcount = 4

""Windows clipboard
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y

""Better splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

"" File finding (CtrlP)
map ; :CtrlP<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
"map ;f<CR> :Files<CR>
"map ;g<CR> :GFiles<CR>
"map ;g?<CR> :GFiles?<CR>
"map ;b<CR> :Buffers<CR>
"map ;c<CR> :Colors<CR>
"map ;l<CR> :Lines<CR>

"Language settings
let g:vim_vue_plugin_use_sass=1
let g:go_highlight_operators=1
let g:go_highlight_function_calls=1

"Vimwiki
let g:vimwiki_list = [{'path': '~/notebook/vimwiki'}]
