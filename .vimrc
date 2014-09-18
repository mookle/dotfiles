" General settings
set nocompatible " no old school vi support
set nobackup	 " don't backup edited buffers
set noswapfile	 " don't create a swap file
set autoread     " reload externally edited files
set visualbell 	 " silence beeps
set noerrorbells " silence beeps
set t_Co=256

" Windows / buffers
set hidden     " hide buffers rather than require they are saved or discarded
set splitbelow " open horizontal splits below the current file
set splitright " open vertical splits to the right of the current file

" Searching
"set hlsearch   " highlight search terms
set incsearch  " show search matches as they are typed
set ignorecase " ignore case when searching
set smartcase  " make searches case-sensitive when uppercase is used

" Editing
set number    	  " enable line numbers
set cursorline    " highlight the current line
set ruler         " display the cursor position in STATUS bar
set showcmd       " show partial commands in the STATUS bar
set textwidth=120 " max horizontal characters
set nowrap        " don't wrap text
set scrolloff=12  " number of lines to display either side of the current

" Indentation
filetype plugin indent on
set shiftwidth=4  " number of spaces to use when indenting in CMD mode
set shiftround    " round to the closest mulitple of shiftwidth in CMD mode
set expandtab     " convert tabs to spaces in INSERT mode
set softtabstop=4 " number of columns a tab uses

" Visual settings
syntax on " enable syntax highlighting
" Syntax highlighting for Twig
autocmd BufRead,BufNewFile *.twig set filetype=htmljinja
" Highlight trailing whitespace
"autocmd ColorScheme * hi ExtraWhitespace ctermbg=white
autocmd ColorScheme * match ExtraWhitespace /\s\+$/

" ========== Plugins ===========

" CtrlP
set wildignore+=*/tmp/*,*/.git/*,*/cache/*,*/logs/*,*.so,*.swp,*.zip " excluded paths
let g:ctrlp_working_path_mode = 'a'   " use the current working directory as root, provided it isn't a descendant of CtrlP's directory
"let g:ctrlp_cmd='CtrlPMRUFiles'       " start CtrlP in MRU mode
let g:ctrlp_clear_cache_on_exit=0     " maintain cache between vim sessions
let g:ctrlp_open_multiple_files = 'i' " open mulitple files as hidden buffers
let g:ctrlp_mruf_max = 15             " limit the number of recently-used files CtrlP should remember

" Vim Markdown
let g:vim_markdown_folding_disabled=1 " disable folding

" PHP syntax
let g:php_ignore_phpdoc=1

" XPTemplate
let g:xptemplate_key = '<Tab>'
let g:xptemplate_vars = '$author=<AUTHOR>'

" Syntastic
let g:syntastic_scala_checkers = []
let g:syntastic_enable_balloons = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_auto_jump = 1

" ========== Vundle ==========

filetype off " required
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle itself
Bundle 'gmarik/vundle'

" Restores Focus(Lost|Gained) when using iTerm
Bundle 'sjl/vitality.vim'

" CtrlP (fuzzy file-finder)
Bundle 'kien/ctrlp.vim'

" Display git diff notation in the gutter
Bundle 'airblade/vim-gitgutter'

" File renaming (saveas and delete old)
Bundle 'vim-scripts/Rename'

" Template snippets
Bundle 'drmingdrmer/xptemplate'

Bundle 'vim-scripts/SyntaxAttr.vim'
" Syntax error checking
Bundle 'scrooloose/syntastic'

" Syntax highlighting
Bundle 'derekwyatt/vim-scala'
Bundle 'estin/htmljinja'
Bundle 'plasticboy/vim-markdown'
Bundle 'StanAngeloff/php.vim'
Bundle 'leshill/vim-json'

" Colorschemes
Bundle 'vim-scripts/devbox-dark-256'
Bundle 'mookle/autobot.vim'
Bundle 'mookle/decepticon.vim'
Bundle 'vim-scripts/256-jungle'

filetype plugin indent on " re-enable now that Vundle is done

" Set default colourscheme
colorscheme autobot
