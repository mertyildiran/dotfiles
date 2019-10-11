" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" a simple, easy-to-use Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" Browse GitHub events (user dashboard, user/repo activity) in Vim
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Vim snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" a tree explorer plugin for Vim
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" fireplace.vim: Clojure REPL support
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Generates config files for YouCompleteMe
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" a command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()
