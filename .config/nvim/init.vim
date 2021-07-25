" load configuration files 
runtime! config.d/*.vim

" Automatic reloading of config
autocmd! bufwritepost ~/.config/nvim/init.vim source %

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
colorscheme github
set background=light
let g:airline_theme = "github"

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

" Folding zc, zo 
" set foldenable        " отклключить фолдинг по умолчанию
syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
set foldmethod=syntax   " определять блоки на основе синтаксиса файла
" set foldmethod=indent " определять блоки на основе отступов
set foldnestmax=3       " deepest fold is 3 levels
" set foldcolumn=10     " показать полосу для управления сворачиванием
set foldlevel=0         " Первый уровень вложенности открыт, остальные закрыты
" set foldopen=all      " автоматическое открытие сверток при заходе в них
