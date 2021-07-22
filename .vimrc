" ========== Vundle ==========
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim " when using simple vim
set rtp+=~/.config/nvim/bundle/Vundle.vim " when using nvim 
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" colorsheme and display features
Plugin 'cormacrelf/vim-colors-github'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" nav files
Plugin 'preservim/nerdtree'

" git
Plugin 'airblade/vim-gitgutter'

" code
Plugin 'prettier/vim-prettier'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ========== Generul settings ==========

set termguicolors

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Mouse and backspace
set mouse=a
set bs=2

" Rebind <Leader> key
let mapleader = ","

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" Bind easier split navigations
" instead of ctrl-w then j, it’s just ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-c> :nohl<CR>
vnoremap <C-c> :nohl<CR>
inoremap <C-c> :nohl<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Color scheme
" set t_Co=256
" colorscheme typewriter
colorscheme github
let g:airline_theme = "github"

" if has('gui_running')
"     set background=light "dark
"     colorscheme gruvbox
"     let g:gruvbox_contrast_light = 'hard'
"
"     " Enable syntax highlighting
"     syntax on
" endif

" Showing line numbers and length2
set number  " show line numbers
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" run/fmt go files
" autocmd FileType go map <C-l> :w<CR>:exec '!go fmt' shellescape(@%, 1)<CR>
" autocmd FileType go imap <C-l> <esc>:w<CR>:exec '!go fmt' shellescape(@%, 1)<CR>
" 
" autocmd FileType go map <C-r> :w<CR>:exec '!go run' shellescape(@%, 1)<CR>
" autocmd FileType go imap <C-r> <esc>:w<CR>:exec '!go run' shellescape(@%, 1)<CR>

" folding zc, zo 
" set foldenable        " отклключить фолдинг по умолчанию
syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
set foldmethod=syntax   " определять блоки на основе синтаксиса файла
" set foldmethod=indent " определять блоки на основе отступов
set foldnestmax=3       " deepest fold is 3 levels
" set foldcolumn=10     " показать полосу для управления сворачиванием
set foldlevel=0         " Первый уровень вложенности открыт, остальные закрыты
" set foldopen=all      " автоматическое открытие сверток при заходе в них

" gui options
if has('gui_running')
    set guifont=Source\ Code\ Pro\ Semibold\ 12
endif

function! ToggleGUICruft()
  if &guioptions=='ir'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=ir')
  endif
endfunction

map <F11> <Esc>:call ToggleGUICruft()<cr>

set guioptions=ir

" ========== indentLine ==========
" let g:indentLine_char = '┊'
" set list lcs=tab:\┊\

" ========== NERDTree ============
if has('gui_running')
    autocmd VimEnter * NERDTree | wincmd p
endif
nnoremap <C-t> :NERDTreeToggle<CR>

" ========== Prettier ============
let g:prettier#config#arrow_parens='avoid'
let g:prettier#config#single_quote='false'
let g:prettier#config#print_width=160
let g:prettier#config#trailing_comma='none'

" ========== Airline =============
" todo: settings
