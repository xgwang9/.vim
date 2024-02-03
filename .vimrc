syntax on

" Add line number
set nu
set smartcase
set smartindent
set nowrap
set noswapfile
set incsearch
set hlsearch

set undodir=~/.vim/undodir
set undofile

" Add a red bar at column 80
set colorcolumn=80
" Automatic wraping to new line
set textwidth=80
" Set the text width for automatic word wrapping
set tw=79

" Auto exec RltvNmbr
autocmd VimEnter * RltvNmbr

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" auto complete
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
" open file at last place
Plug 'farmergreg/vim-lastplace'
" cscope
Plug 'dr-kino/cscope-maps'
" linux coding style 
Plug 'vivien/vim-linux-coding-style'
" Display relative line numbers
Plug 'vim-scripts/RltvNmbr.vim'

" Initialize plugin system
call plug#end()
