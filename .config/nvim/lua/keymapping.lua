--[[
       __ ________  ____  ______   ___  ___  _____  _______  __   __  _____ 
      / //_/ __/\ \/ /  |/  / _ | / _ \/ _ \/  _/ |/ / ___/ / /  / / / / _ |
     / ,< / _/   \  / /|_/ / __ |/ ___/ ___// //    / (_ / / /__/ /_/ / __ |
    /_/|_/___/   /_/_/  /_/_/ |_/_/  /_/  /___/_/|_/\___(_)____/\____/_/ |_|
                                                                        
    this file can be loaded by calling `require("module_name")` from your init.lua
--]]


local map = vim.api.nvim_set_keymap -- set global keymap
local g   = vim.g         			-- global variables

local opts = {noremap = true, silent = true} -- keymap options

g.mapleader = "," -- rebind <Leader> key

map("n", "<leader>e", ":wq<cr>", opts)    -- quick quit command
map("n", "<leader>E", ":qa!<cr>", opts)   -- 
map("n", "<leader>WE", ":wqa<cr>", opts)  -- 

-- split nav
map("n", "<C-J>", "<C-W><C-J>", opts) -- bind easier split navigations
map("n", "<C-K>", "<C-W><C-K>", opts) -- instead of ctrl-w then k, it’s just ctrl-k
map("n", "<C-L>", "<C-W><C-L>", opts) -- 
map("n", "<C-H>", "<C-W><C-H>", opts) -- 

-- tab nav
map("n", "<leader>1", "1gt", opts)                 -- tab swithing
map("n", "<leader>2", "2gt", opts)                 --
map("n", "<leader>3", "3gt", opts)                 --
map("n", "<leader>4", "4gt", opts)                 --
map("n", "<leader>5", "5gt", opts)                 --
map("n", "<leader>6", "6gt", opts)                 --
map("n", "<leader>7", "7gt", opts)                 --
map("n", "<leader>8", "8gt", opts)                 --
map("n", "<leader>9", "9gt", opts)                 --
map("n", "<leader>0", "<cmd>tablast<cr>", opts)    -- 
-- map("n","<C-1>", "<cmd>tabnext<cr", opts)       --
-- map("n","<C-2>", "<cmd>tabprevious<cr>", opts)  --

map("n", "<leader>c", ":nohl<cr>", opts) -- bind nohl
map("v", "<leader>c", ":nohl<cr>", opts) -- removes highlight of your last search
map("i", "<leader>c", ":nohl<cr>", opts) --

-- map("v", "<leader>s", ":sort<cr>", opts) -- map sort function to a key

map("v", "<", "<gv", opts)  -- easier moving of code blocks. try to go into visual mode (v), thenselect several lines of code here and
map("v", ">", ">gv", opts)  -- then press ``>`` several times 

map("n", "<leader>w", ":w<cr>", opts)      -- fast saving
map("i", "<leader>w", "<C-s>:w<cr>", opts) --

map("i", "kk", "<Esc>", opts) -- press kk to exit

map("", "<up>", "<nop>", opts)    -- don"t use arrow keys
map("", "<down>", "<nop>", opts)  --
map("", "<left>", "<nop>", opts)  --
map("", "<right>", "<nop>", opts) --

-- telescope
map("", "<leader>s", "<cmd>Telescope find_files<cr>", opts) -- 
map("", ";;", "<cmd>Telescope help_tags<cr>", opts)  	    --
map("", "\\\\", "<cmd>Telescope buffers<cr>", opts)  	    --
map("", ";r", "<cmd>Telescope live_grep<cr>", opts)  	    --

-- nvim-tree
map("n", "<leader>t", ":NvimTreeToggle<CR>", opts) -- toggle

-- autocompetion tab navigations
map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})     -- function impl in _nvim-compee.lua
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})     --
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true}) --
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true}) --

-- vim-fugitive 
map("n", "<leader>gc", "<cmd>Git add % | Git commit<cr>", opts) -- commit current file
map("n", "<leader>gr", "<cmd>Git checkout HEAD -- %<cr>", opts) -- rollback current chachges
