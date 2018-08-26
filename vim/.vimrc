"set relative and absolute line numbers
set number
set relativenumber 

" Disable vi compatibility
set nocompatible            

set autoindent
set expandtab

set incsearch
set ignorecase
set smartcase

set linebreak "Vim will wrap long lines at a character in 'breakat' rather than at the last character that fits on the screen. 
set laststatus=2
set ruler
set wildmenu
set cursorline
set title
set showcmd

set hlsearch

set history=9000
set tabstop=4

"Install Vim Plug if doesn't exist... 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/syntastic'  
"Plug 'valloric/youcompleteme'

" Initialize plugin system
call plug#end()

"Theme
syntax enable
set background=dark
"colorscheme solarized
colorscheme dracula

"NERD tree
map <C-n> :NERDTreeToggle<CR>

"map <Leader> <Plug>(easymotion-prefix)

"Syntatic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

