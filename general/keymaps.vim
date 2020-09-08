"Make sure this file is sourced in `init.vim` *before* other config imports.
"Otherwise the leader mappings will not work.
let mapleader=" "
nnoremap <Space> <Nop>

"Navigation
noremap <C-w> <C-y>

"Windows clipboard
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y

"Better splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Search highlight
nnoremap <esc> :noh<return><esc>
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction