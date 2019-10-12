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
Plug 'scrooloose/nerdtree'
" a plugin of NERDTree showing git status
Plug 'Xuyuanp/nerdtree-git-plugin'

" fireplace.vim: Clojure REPL support
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Generates config files for YouCompleteMe
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" a command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
" rhubarb.vim: GitHub extension for fugitive.vim
Plug 'tpope/vim-rhubarb'
" an extension to fugitive.vim for gitlab support
Plug 'shumphrey/fugitive-gitlab.vim'

" surround.vim: quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" repeat.vim: enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" Syntax checking hacks for vim
Plug 'scrooloose/syntastic'

" a Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks and partial hunks
Plug 'airblade/vim-gitgutter'

" Vim plugin that displays tags in a window, ordered by scope
Plug 'majutsushi/tagbar'

" Vim plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'

" a code-completion engine for Vim
Plug 'valloric/youcompleteme'

" Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'

" Emmet for vim
Plug 'mattn/emmet-vim'

" Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
Plug 'w0rp/ale'

" commentary.vim: comment stuff out
Plug 'tpope/vim-commentary'

" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" a dark Vim/Neovim color scheme inspired by Atom's One Dark syntax theme
Plug 'mertyildiran/onedark.vim'

" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
Plug 'ryanoasis/vim-devicons'

" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'

" a command-line fuzzy finder
Plug 'junegunn/fzf'

" Use RipGrep in Vim and display results in a quickfix list
Plug 'jremmen/vim-ripgrep'

" a very simple plugin that makes hlsearch more useful
Plug 'romainl/vim-cool'

" Start a * or # search from a visual block
Plug 'nelstrom/vim-visual-star-search'

" Asynchronously fly grep in vim
Plug 'wsdjeg/FlyGrep.vim'

" Initialize plugin system
call plug#end()


:set encoding=UTF-8
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set number


" Search and replacement related configurations
:set hlsearch
:set incsearch
let g:CoolTotalMatches = 1
let g:rg_command = 'rg --vimgrep -S'

" FlyGrep.vim mapping
nnoremap <C-S-f> :FlyGrep<CR>

" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>


" Color Scheme (Atom's One Dark)
if has("termguicolors")
    set termguicolors
endif
colorscheme onedark

" NERDTree configurations
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMapActivateNode='l'
let NERDTreeMapCloseDir='h'
let NERDTreeMapCloseChildren='x'

" vim-gitgutter
let g:gitgutter_override_sign_column_highlight = 1


" tagbar
nmap <F8> :TagbarToggle<CR>


" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='onedark'

" ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Emmet-vim
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Navigate around splits with a single key combo.
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>

" Cycle through splits.
nnoremap <S-Tab> <C-w>w
