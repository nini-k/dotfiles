--[[
   _____  ____________  __   __  _____ 
  /  _/ |/ /  _/_  __/ / /  / / / / _ |
 _/ //    // /  / / _ / /__/ /_/ / __ |
/___/_/|_/___/ /_/ (_)____/\____/_/ |_|
                                       
--]]    

-------------------- PLUGINS -------------------------------
vim.cmd 'packadd paq-nvim'           -- load the package manager
local paq = require('paq-nvim').paq  -- a convenient alias

require 'paq'{ 
    'savq/paq-nvim';  -- let paq manage itself

    'neovim/nvim-lspconfig';
    
    -- syntax
    'hrsh7th/nvim-compe'; -- autocomplete
    'hrsh7th/vim-vsnip';  -- dependency

    -- statusline
    'hoob3rt/lualine.nvim';
    
    -- navigation 
    'kyazdani42/nvim-tree.lua';      -- files
    'nvim-telescope/telescope.nvim'; -- fuzzy finder
    'nvim-lua/plenary.nvim';         -- dependency

    -- icons
    'kyazdani42/nvim-web-devicons';
    'yanoasis/vim-devicons';

    -- git
    'airblade/vim-gitgutter';
    'tpope/vim-fugitive';
    'sindrets/diffview.nvim';
    'kdheepak/lazygit.nvim';

    --'NLKNguyen/papercolor-theme'
    --'Yggdroot/indentLine'
    --'preservim/nerdtree';
}

-------------------- MODULES -------------------------------
require('keymapping') -- keymapping
require('settings')   -- settings 

-- plugins 
require('nvim-lspconfig/typescript')  -- typesctipt lsp settings 
require('_lualine')                   -- lualine settings
require('_telescope')                 -- telescope settings
require('_nvim-tree')                 -- nvim-tree settings
require('_nvim-compe')                -- nvim-compe settings

