syntax on
filetype indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"colorscheme gruvbox
set background=dark
set number
set relativenumber
set showcmd
set title " Title of Doc
set laststatus=2 " Sets status line
set wildmenu
set showmatch
set incsearch
set hlsearch
let mapleader=" "
nnoremap <leader><space> :noh<CR>
nnoremap j gj
nnoremap k gk
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
set list

inoremap jk <esc>
set ruler
inoremap <C-R>+ <C-R><C-R>+

"" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

 " Plugins
 call plug#begin()
 Plug 'kien/ctrlp.vim'
 Plug 'ap/vim-buftabline'
 Plug 'hdima/python-syntax'
 Plug 'scrooloose/syntastic'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'luochen1990/rainbow'
 Plug 'RRethy/vim-illuminate'
 Plug 'inside/vim-search-pulse'
 Plug 'bagrat/vim-buffet'
 Plug 'morhetz/gruvbox'
 call plug#end()

 " <Ctrl-N> and <Ctrl-M> switch to next buffer
 nnoremap <C-M> :bnext<CR>
 nnoremap <C-N> :bprev<CR>

 " <Ctrl-X> to close tab
 nnoremap <C-X> :bd<CR>

 " tell it to use an undo file
 set undofile
 " set a directory to store the undo history
 set undodir=~/.vim/undo/
 " <F5> to show spelling mistakes
 nnoremap <F5> :set spell!<CR>
 " Switch Tabs using <Tab> or <Shift-Tab>
 nmap <tab> gt
 nmap <C-tab> gT

 " Exit "insert" mode by pressing "jj"
 :imap jj <Esc>

 " Syntax checker
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0
 let g:syntastic_python_checkers = ['pylint', 'flake8']
 let g:rainbow_active = 1

 " Easy window navigation
 map <C-h> <C-w>h
 map <C-j> <C-w>j
 map <C-k> <C-w>k
 map <C-l> <C-w>l

 set hidden
 set backspace=indent,eol,start " allow backspacing over everything in insert
 mode
 set autoindent    " always set autoindenting on
 set copyindent    " copy the previous indentation on autoindenting
 set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
 set smarttab      " insert tabs on the start of a line according to
 set history=1000         " remember more commands and search history

 set undolevels=1000      " use many muchos levels of undo

 hi illuminatedWord cterm=underline gui=underline

 nnoremap n *
 nnoremap gm :call cursor(0, virtcol('$')/2)<CR>
