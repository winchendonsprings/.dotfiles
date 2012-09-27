" Ryan  Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan
" Ryan  Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan
" Ryan  Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan
" Ryan  Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan
" Ryan  Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan
" Ryan  Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan Ryan

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
au!

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

augroup END

else

set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle START
" Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle START
" Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle START

""""""""""""""""""" For Vundle --- There may be duplicates

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
 Bundle 'gmarik/vundle'

" My Bundles here:

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...
 
filetype plugin indent on     " required!

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
" Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle END 
" Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle END 
" Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle Vundle END 

" ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan  START
" ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan  START
" ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan  START
" ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan  START

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'AutoComplPop'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-surround'
Bundle 'qqshfox/inkpot'
Bundle 'nanotech/jellybeans.vim'
Bundle 'tpope/vim-vividchalk'
Bundle 'chriskempson/tomorrow-theme'
Bundle 'w0ng/vim-hybrid'
Bundle 'molokai'
Bundle 'rainbow.zip'
Bundle 'wombat256.vim'
Bundle 'xoria256.vim'

set laststatus=2 
" add colors
set t_Co=256
" colorscheme hybrid
" colorscheme inkpot
" colorscheme vividchalk
" colorscheme Tomorrow-Night-Bright 
" colorscheme zenburn 
colorscheme jellybeans
" colorscheme molokai
"""" solarized start
 "syntax enable
""if has('gui_running')
""set background=light
""else
"set background=dark
""endif
""let g:solarized_termcolors=256
"colorscheme solarized
"""" solarized END
set backupdir=~/.tmp
set directory=~/.tmp " Don't clutter dirs with tmp & swp
" powerline
let g:Powerline_symbols = 'fancy'
" allows :w!! to save if you forgot to open a readonly without perms
cmap w!! %!sudo tee > /dev/null %
" Ctrlp mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" no welcome message
set shortmess+=I

" ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan END 
" ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan END 
" ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan END 
" ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan ryan END 
