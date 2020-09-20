"To see what base directories are used go to: 
"https://neovim.io/doc/user/starting.html#base-directories

source <sfile>:h/vim-plug/plugins.vim

source <sfile>:h/general/keymaps.vim
source <sfile>:h/general/settings.vim

source <sfile>:h/plug-config/coc.vim
source <sfile>:h/plug-config/easymotion.vim
source <sfile>:h/plug-config/fzf.vim
source <sfile>:h/plug-config/hardtime.vim
source <sfile>:h/plug-config/indentLine.vim
source <sfile>:h/plug-config/lightline.vim
source <sfile>:h/plug-config/vimwiki.vim

"Quick UI
colorscheme gruvbox
let g:lightline.colorscheme = 'gruvbox'
set guifont=Cascadia\ Mono\:h11

"Language settings. Too few for a whole folder or file.
let g:vim_vue_plugin_use_sass = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_calls = 1

"Lackey development
let g:python3_host_prog = "C:/Users/cpoon/AppData/Local/Programs/Python/Python38/python.exe"
let g:lackey_ignore = '.git,node_modules'
"let g:lackey_timestamp_format = '%Y-%m-%dT%H:%M'
