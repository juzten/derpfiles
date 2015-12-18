" Tabs.
" 1 tab == 4 spaces
set tabstop=4
" number of spaces in tab when editing
set softtabstop=4

" Line numbers
set number
" load filetype-specific indent files
filetype indent on
" visual autocomplete for command menu
set wildmenu

" Set colorscheme
syntax enable
if has('gu_running')
    set background=light
else
    set background=dark
endif
let g:solarized_termcolors=256
colorscheme solarized

" Set to auto read when a file is changed from the outside
set autoread

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Use spaces instead of tabs
set expandtab

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
    %s/\s\+$//ge
      exe "normal `z"
      endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

" Highlight trailing whitespace and whitespace on blank lines
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
" highlight matching [{()}]
set showmatch
" search as chars are entered
set incsearch
"highlight matches
set hlsearch
"turn off search highlight with ctrl+l
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Show line and column number
" set ruler

" Autoreload vimrc when it's changed
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
