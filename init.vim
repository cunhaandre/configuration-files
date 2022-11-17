syntax on "syntax highlighting
filetype plugin indent on "file type detection
set number "display line number
set relativenumber "display relative line numbers
set smartindent "autoindent on new lines
set nobackup "disable backups
set nowritebackup "disable backups
set noswapfile "disable swap files
set tabstop=4 "setting tab to 4 columns
set shiftwidth=4 "setting tab to 4 columns
set softtabstop=4 "setting tab to 4 columns
set expandtab "expanding tab to spaces
set mouse=a "activating mouse support

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround' "enable sentence surrounding ysw
Plug 'scrooloose/nerdtree' "NERDtree
Plug 'tpope/vim-commentary' "comment stuff out (gcc and gc)
Plug 'bling/vim-airline' "status bar
Plug 'vim-airline/vim-airline-themes' "status bar themes
Plug 'rafi/awesome-vim-colorschemes' "vim themes
Plug 'w0rp/ale' "syntax check
Plug 'vim-autoformat/vim-autoformat' "formater
Plug 'tc50cal/vim-terminal' "vim terminal
Plug 'neoclide/coc.nvim' "auto completion
Plug 'preservim/tagbar' "bar for code navigation
Plug 'vim-python/python-syntax' "improved python syntax highlighting

call plug#end()

"Colorscheme
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

"vim-autoformat
noremap <F3> :Autoformat<CR>

"tagbar
nmap <F8> :TagbarToggle<CR>

"coc (tab completion)
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>""

"python-syntax
let g:python_highlight_all=1

"Ale
let g:ale_lint_on_enter=0
let g:ale_lint_on_text_changed='never'
let g:ale_echo_msg_error_str='E'
let g:ale_echo_msg_warning_str='W'
let g:ale_echo_msg_format='[%linter%] %s [%severity%]'
let g:ale_linters={'python':['flake8']}

"Airline
let g:airline_theme='gruvbox'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#ale#enabled=1
let g:airline#extensions#ale#error_symbol='E:'
let g:airline#extensions#ale#warning_symbol='W:'

"NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"Some notes
":PlugClean :PlugInstall :UpdateRemotePlugins
":CocInstall coc-python
