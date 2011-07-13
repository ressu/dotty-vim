set helplang=en

" Command history should be 50 lines
set history=50

" Always use a4 when printing
set printoptions=paper:a4

" Show line numbers in the statusline
set ruler

" I like shiftwidth and tabstop of 2
set shiftwidth=2
set tabstop=2

" Per default we want to expand tabs and use smarttab
set expandtab smarttab

" Store global variables
set viminfo^=!

" Enable pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Set filetype plugin on if autocmd is available
if has("autocmd")
  filetype plugin indent on
else
	set smartindent
endif

" Use wilmenu, it's handy
set wildmode=longest:full
set wildmenu

" Enable syntax if supported
if has("syntax")
  syntax on
  " Define colorscheme only if we have syntax enabled. Otherwise there is no
  " need
  set background=dark
  colorscheme pablo
endif

if has("gui_running")
	set guifont=Terminus\ 9
endif

" Set statusline to a slick little version
" Show statusline only if there are more than one window open.
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
set laststatus=1

" Search options
" - Use hilighted search as well as incremental search
" - Ignore case in searches and use smartcase when needed
set hlsearch incsearch
set ignorecase smartcase

" Show file numbers
set number

" Show command and mode in the statusline
set showcmd showmode

" Allow hidden and modified buffers
set hidden

" Open buffers in tabs
set switchbuf=usetab,newtab

"Make NERC_commenter shut up about unkown filetypes
let NERDShutUp=1

"Set pylint as the compiler for python
autocmd FileType python compiler pylint

"Map Function keys
map <silent> <F2> :WMToggle<CR>
map <silent> <F3> :TlistToggle<CR>

" Enable spell checking
set spell
set spelllang=en,fi

" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

" Edit vimrc \ev
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>

" Taglist configuration
let Tlist_Use_Right_Window = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_SingleClick = 1
let Tlist_Inc_Winwidth = 0

" enable neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Map <Leader>cd to something useful
nnoremap <silent> <Leader>cd :lcd %:h<CR>

" vim: set ft=vim :
