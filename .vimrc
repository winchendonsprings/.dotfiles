" vim vs vi
" required!
set nocompatible        

" Vundle
" required!
filetype off     			
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" plugins
"Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'AutoComplPop'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-vinegar'
Bundle 'myusuf3/numbers.vim'
"Bundle 'airblade/vim-gitgutter'
Bundle 'mhinz/vim-signify'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"Bundle 'Shougo/neocomplcache'
"Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'rking/ag.vim'
Bundle 'sjl/gundo.vim'
Bundle 'PotatoesMaster/i3-vim-syntax'
Bundle 'spf13/PIV'
Bundle 'taglist.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'edsono/vim-matchit'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'tpope/vim-sensible'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'StanAngeloff/php.vim'
Bundle 'cakebaker/scss-syntax.vim'
" snipmate start
Bundle 'garbas/vim-snipmate'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
" snipmate end

" themes
Bundle 'flazz/vim-colorschemes'
Bundle 'blerins/flattown'
        "Bundle 'altercation/vim-colors-solarized'
        "Bundle 'chriskempson/vim-tomorrow-theme'
        "Bundle 'chriskempson/base16-vim'
        "Bundle 'nanotech/jellybeans.vim'
        "Bundle 'tpope/vim-vividchalk'
        "Bundle 'qqshfox/inkpot'
        "Bundle 'twerth/ir_black'
        "Bundle 'molokai'
        "Bundle 'w0ng/vim-hybrid'
        "Bundle 'wombat256.vim'
        "Bundle 'xoria256.vim'

" load filetype, plugin and indent are detected
" required!
filetype plugin indent on     

" enable syntax highlight
syntax enable

" number of  spaces that a tab counts for
set tabstop=4

" number of  spaces that a tab counts for while editing a file
set softtabstop=4

" tabs are actually spaces
set expandtab

" show line nubers
set number

" show command in bottom bar
set showcmd             

" highlight current line
set cursorline          

" visual autocomplete for command menu
set wildmenu            

" redraw only when we need to
set lazyredraw          

" Set to auto read when a file is changed from the outside
set autoread

" highlight matching [{()}]
set showmatch           

" search as characters are entered
set incsearch           

" highlight matches of search
set hlsearch            

" case insensitive search
set ignorecase

" only search upper case specific if upper case is type as search pattern
set smartcase

" remember indents
set smarttab

" allows :w!! to save if you forgot to open a readonly without perms
cmap w!! %!sudo tee > /dev/null %

" no welcome message
set shortmess+=I

" More natural split opening open new split panes to right and bottom, which feels more natural than Vim’s default
set splitbelow
set splitright

" change shift size to 4
set shiftwidth=4

" always set autoindenting on
set autoindent

" backspace over everything in insert mode
set backspace=indent,eol,start

"Round indent to multiple of 'shiftwidth'.
set shiftround

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=1

" add colors
set t_Co=256

" Change vims directory when navigatin new files
set autochdir

" Don't clutter dirs with tmp & swp
set backupdir=~/.tmp
set directory=~/.tmp

" note to self easymotion is <leader><leader>w or <leader><leader>b etc...

" Access colors present in 256 colorspace
let base16colorspace=256

" set colorscheme based on what computer I'm on
if hostname() == "g62x"
  colorscheme badwolf
"  colorscheme base16-default
"  colorscheme base16-monokai
"  set background=dark
elseif hostname() == "devbox"
  colorscheme jellybeans
elseif hostname() == "debian"
  colorscheme molokai
endif

" always show airline
set laststatus=2

" airline settings
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts=0
"let g:airline#extensions#tabline#enabled=1
"let g:airline_theme='powerlineish'

" Ctrlp mappings
let g:ctrlp_map = '<c-p>'               " invokes Ctrlp
let g:ctrlp_cmd = 'CtrlPBuffer'         " opens ctrlp in buffer mode rather than filesmode
let g:ctrlp_max_files = 0               " no max file limit
let g:ctrlp_working_path_mode = 0       " search from current directory rather than project root
let g:ctrlp_clear_cache_on_exit = 0     " does not clear cache after vim close
"let g:ctrlp_by_filename = 1 	        " search by fuzzy filename rather than path
let g:ctrlp_match_window_reversed = 0	" start results at top of ctrlp window 
let g:ctrlp_max_height = 20 	        " ctrlp window lines high

" NERDTree shortcut
nmap <leader>nt :NERDTreeToggle<cr>
let NERDTreeShowHidden=1                 " Show hidden files in nerdtree by default

" Taglist shortcut
nmap <leader>tl :TlistToggle<cr>

" Rainbow Parenthasis shortcut
nmap <leader><leader>rp :RainbowParenthesesToggle<cr>

" Gundo toggle shortcut
nmap <leader>gu :GundoToggle<cr>

" syntastic enabled
let g:syntastic_check_on_open = 1
"let g:syntastic_css_checkers = ['prettycss']
