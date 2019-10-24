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

" a command-line fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Use RipGrep in Vim and display results in a quickfix list
Plug 'jremmen/vim-ripgrep'

" a very simple plugin that makes hlsearch more useful
Plug 'romainl/vim-cool'

" Start a * or # search from a visual block
Plug 'nelstrom/vim-visual-star-search'

" Automatically save changes to disk in Vim
Plug '907th/vim-auto-save'

" Vim plugin for the Perl module / CLI script 'ack'
Plug 'mileszs/ack.vim'

" True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'

" a Vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

" Provide easy code formatting in Vim by integrating existing code formatters.
Plug 'chiel92/vim-autoformat'

" an extensible & universal comment vim-plugin that also handles embedded filetypes
Plug 'tomtom/tcomment_vim'

" Vim plugin to visualize your Vim undo tree
Plug 'sjl/gundo.vim'

" a solid language pack for Vim
Plug 'sheerun/vim-polyglot'

" Defaults everyone can agree on
Plug 'tpope/vim-sensible'

" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" a Vim plugin to colorize all text in the form #rrggbb or #rgb<Paste>
Plug 'lilydjwg/colorizer'

" Ranger.vim
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" Run a diff on 2 directories.
Plug 'will133/vim-dirdiff'

" Add spelling errors to the quickfix list (vim-ingo-library is a dependency).
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-SpellCheck'

" Better display unwanted whitespace.
Plug 'ntpeters/vim-better-whitespace'

" Automatically set 'shiftwidth' + 'expandtab' (indention) based on file type.
Plug 'tpope/vim-sleuth'

" Trying to unload, delete or wipe a buffer without closing the window or split?
Plug 'qpkorr/vim-bufkill'

" Run test suites for various languages.
Plug 'janko/vim-test'


" --- JavaSript ---
" Vastly improved Javascript indentation and syntax support in Vim
Plug 'pangloss/vim-javascript'

" --- JSON ---
" a better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing
Plug 'elzr/vim-json'

" --- HTML ---
" HTML5 omnicomplete and syntax
Plug 'othree/html5.vim'

" --- Laravel ---
" Vim syntax highlighting for Blade templates
Plug 'jwalton512/vim-blade'

" --- Trackers ---
" Vim plugin for automatic time tracking and metrics generated from your programming activity
Plug 'wakatime/vim-wakatime'

" --- SCSS ---
Plug 'cakebaker/scss-syntax.vim'

" --- Nginx ---
Plug 'chr4/nginx.vim'

" --- Excel/CSV ---
Plug 'chrisbra/csv.vim'

" --- Docker ---
Plug 'ekalinin/dockerfile.vim'

" --- Markdown ---
" Markdown Vim Mode
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" --- Vim syntax ---
Plug 'PotatoesMaster/i3-vim-syntax'

" --- YAML ---
Plug 'stephpy/vim-yaml'

" --- TMUX ---
Plug 'tmux-plugins/vim-tmux'

" --- Ruby ---
Plug 'vim-ruby/vim-ruby'

" --- Ruby on Rails ---
Plug 'tpope/vim-rails'

" --- Python ---
Plug 'vim-python/python-syntax'

" --- systemd ---
Plug 'wgwoods/vim-systemd-syntax'

" Initialize plugin system
call plug#end()


source ~/.vim/nerdtree_git_ignored_files.vim
source ~/.vim/fix_the_issue_between_ycm_and_ultisnips.vim

filetype plugin indent on

set encoding=UTF-8
set tabstop=4
set shiftwidth=4
set expandtab smarttab
set number
set cursorline
set mouse=a
set wildignore+=.git
set autoindent
set autoread
set backspace=indent,eol,start
set textwidth=80
set colorcolumn=80
set splitbelow
set splitright

" Search and replacement related configurations
set hlsearch
set incsearch
let g:CoolTotalMatches = 1
let g:rg_command = 'rg --vimgrep -S'
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" Silver Searcher remapping
nnoremap <C-S-f> :Ag!<CR>

" Silver Searcher with full screen preview
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

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
nnoremap <Leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMapActivateNode='l'
let NERDTreeMapCloseDir='h'
let NERDTreeMapCloseChildren='x'
let NERDTreeShowHidden=1
let NERDTreeRespectWildIgnore=1
" Jump to the main window after opening NERDTree
autocmd VimEnter * wincmd p

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

" Fix vim-airline branch symbol
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''

" CtrlP with Silver Searcher
nnoremap <C-p> :FZF<CR>

" Emmet-vim
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Buffers
nnoremap <C-u> :BB<cr>
nnoremap <C-i> :BF<cr>
nnoremap <C-w> :BW<cr>

" Navigate around splits with a single key combo.
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>

" Cycle through splits.
nnoremap <S-Tab> <C-w>w

" Enable Autosave
let g:auto_save = 1

" Enable the indent guides by default
let g:indentLine_char_list = ['¦', '┆', '┊']

" vim-autoformat
noremap <F3> :Autoformat<CR>

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" YouCompleteMe configurations for C-family languages
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Indent multiple times quickly
vnoremap < <gv
vnoremap > >gv

" vim-better-whitespace
let g:better_whitespace_ctermcolor='gray'
let g:better_whitespace_guicolor='gray'

" https://vi.stackexchange.com/a/8383/21731
" https://stackoverflow.com/a/33292042/2104879
augroup python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
augroup end
