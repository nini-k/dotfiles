--[[
    _____   ____________   __    __  _____ 
   /  _/ | / /  _/_  __/  / /   / / / /   |
   / //  |/ // /  / /    / /   / / / / /| |
 _/ // /|  // /  / /  _ / /___/ /_/ / ___ |
/___/_/ |_/___/ /_/  (_)_____/\____/_/  |_|

--]]    

-------------------- PLUGINS -------------------------------
vim.cmd 'packadd paq-nvim'           -- load the package manager
local paq = require('paq-nvim').paq  -- a convenient alias

require 'paq'{ 
    'savq/paq-nvim';  -- let paq manage itself

    'neovim/nvim-lspconfig';
    'hoob3rt/lualine.nvim';
    'airblade/vim-gitgutter'; 
    'nvim-treesitter/nvim-treesitter';
    'nvim-lua/completion-nvim';

    'nvim-telescope/telescope.nvim';
    'nvim-lua/plenary.nvim';
    -- 'kyazdani42/nvim-web-devicons'; -- icons
    -- 'ryanoasis/vim-devicons';       --  ryanoasis/nerd-fonts is required 

    --'NLKNguyen/papercolor-theme'
    --'Yggdroot/indentLine'
    -- nav files
    --'preservim/nerdtree'
    -- git
    --'airblade/gitgutter
}

-------------------- MODULES -------------------------------
require('keymapping') -- keymapping
require('settings')   -- settings 

require('nvim-lspconfig/typescript') -- typesctipt lsp settings 

require('statusline') -- lualine settings

