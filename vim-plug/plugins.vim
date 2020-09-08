"Make sure vim-plug is installed:
"https://github.com/junegunn/vim-plug

call plug#begin(stdpath('data') . '/plugged')

	"Integration

	Plug 'H:/Python/vim-lackey'

	Plug 'jiangmiao/auto-pairs'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mattn/emmet-vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install()   }   }
	Plug 'junegunn/fzf.vim'
	Plug 'Yggdroot/indentLine'
	Plug 'preservim/nerdcommenter'
	Plug 'easymotion/vim-easymotion'
	Plug 'takac/vim-hardtime'
	Plug 'machakann/vim-sandwich'
	Plug 'vimwiki/vimwiki'

	"Interface
	Plug 'itchyny/lightline.vim'
	Plug 'tpope/vim-fugitive'

	"Languages
	Plug 'rust-lang/rust.vim'
	Plug 'leafgarland/typescript-vim'
	Plug 'fatih/vim-go'
	Plug 'pangloss/vim-javascript'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'leafoftree/vim-vue-plugin'

	"Themes
	Plug 'morhetz/gruvbox'
	Plug 'eemed/sitruuna.vim'
	Plug 'srcery-colors/srcery-vim'
	Plug 'ntk148v/vim-horizon'
	Plug 'connorholyday/vim-snazzy'

call plug#end()
