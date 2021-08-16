--[[
   __ ________  ____  ______   ___  ___  _____  _______  __   __  _____ 
  / //_/ __/\ \/ /  |/  / _ | / _ \/ _ \/  _/ |/ / ___/ / /  / / / / _ |
 / ,< / _/   \  / /|_/ / __ |/ ___/ ___// //    / (_ / / /__/ /_/ / __ |
/_/|_/___/   /_/_/  /_/_/ |_/_/  /_/  /___/_/|_/\___(_)____/\____/_/ |_|
                                                                        
--]]

-- This file can be loaded by calling `require('module_name')` from your init.lua

local map = vim.api.nvim_set_keymap -- set global keymap
local g   = vim.g         			-- global variables

local opts = {noremap = true, silent = true} -- keymap options

g.mapleader = ',' -- rebind <Leader> key

map('i', '<leader>e', ':quit<cr>', opts) -- quick quit command
map('i', '<leader>E', ':qa!<cr>', opts)  -- 

map('n', '<C-J>', '<C-W><C-J>', opts)  -- bind easier split navigations
map('n', '<C-K>', '<C-W><C-K>', opts)  -- instead of ctrl-w then k, it’s just ctrl-k
map('n', '<C-L>', '<C-W><C-L>', opts)  -- 
map('n', '<C-H>', '<C-W><C-H>', opts)  -- 

map('n', '<leader>c', ':nohl<cr>', opts) -- bind nohl
map('v', '<leader>c', ':nohl<cr>', opts) -- removes highlight of your last search
map('i', '<leader>c', ':nohl<cr>', opts) --

map('v', '<leader>s', ':sort<cr>', opts) -- map sort function to a key

map('v', '<', '<gv', opts)  -- easier moving of code blocks. try to go into visual mode (v), thenselect several lines of code here and
map('v', '>', '>gv', opts)  -- then press ``>`` several times 

map('n', '<leader>w', ':w<cr>', opts)      -- fast saving
map('i', '<leader>w', '<C-s>:w<cr>', opts) --

map('i', 'kk', '<Esc>', opts) -- press kk to exit

map('', '<up>', '<nop>', opts)    -- don't use arrow keys
map('', '<down>', '<nop>', opts)  --
map('', '<left>', '<nop>', opts)  --
map('', '<right>', '<nop>', opts) --

map('', '<leader>f', '<cmd>Telescope find_files<cr>', opts) -- Telescope
map('', ';;', '<cmd>Telescope help_tags<cr>', opts)  	    --
map('', '\\\\', '<cmd>Telescope buffers<cr>', opts)  	    --
map('', ';r', '<cmd>Telescope live_grep<cr>', opts)  	    --

map('n', '<leader>t', ':NvimTreeToggle<CR>', opts) -- nvim-tree toggle

map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})     -- autocompetion tab navigations 
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})     --
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true}) --
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true}) --
