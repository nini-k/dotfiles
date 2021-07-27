set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim " when using nvim 

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    
    " colorsheme and display features
    Plugin 'NLKNguyen/papercolor-theme'
    Plugin 'Yggdroot/indentLine'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    " nav files
    Plugin 'preservim/nerdtree'

    " git
    Plugin 'airblade/vim-gitgutter'

    " code
    Plugin 'prettier/vim-prettier'
call vundle#end()            " required

filetype plugin indent on    " required
