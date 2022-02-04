""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set shortmess+=I

" Line number
set number relativenumber

" Sets how many lines of history VIM has to remember
set history=1000

" Set to auto read when a file is changed from the outside
set autoread

" cursor
set cursorline
set cursorcolumn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set dictionary
set dictionary+=/usr/share/dict/words
set complete+=k

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

set cmdheight=2 "The commandbar height

set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

set tm=1501 "The time in milliseconds that is waited for a key code or mapped key
            "sequence to complete.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile
set noro

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set tabstop=4       "Indent by 4 spaces when pressing <TAB>
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set shiftround      "Indent/outdent to nearest tabstop

set autoindent      " (ai) Keep indentation from previous line
set smartindent     " (si) Automatically inserts indentation in some cases
set cindent         " (cin) Like smartindent, but stricter and more customisable

set linebreak       " (lbr) wrap long lines at a space instead of in the middle of a word
set textwidth=78   " (tw) automatic word wrapping

set wrap "Wrap lines
set matchpairs+=<:>               "Allow % to bounce between angles too

set nolist                            "Display whitespaces (eol, tab)
"set listchars=tab:\|\<Space>        "vertical line showing the Tab characters

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
set background=dark

if &term == 'linux'
    set t_Co=8
else
    set t_Co=256
endif

"colorscheme apprentice
colorscheme Monokai

" Syntax coloring for YAML
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>l :ls<CR>:b<space>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimdiff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if &diff
        colorscheme Monokai
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree.git'
Plugin 'vimoutliner/vimoutliner'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
Plugin 'perl-support.vim'
Plugin 'bash-support.vim'
Plugin 'c.vim'
Plugin 'tagbar'
Plugin 'CycleColor'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

nmap <F8> :TagbarToggle<CR>
nmap <F10> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" air-line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
