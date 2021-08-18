--[[
   _  ___   ________  ___   _________  ________  __   __  _____ 
  / |/ / | / /  _/  |/  /__/_  __/ _ \/ __/ __/ / /  / / / / _ |
 /    /| |/ // // /|_/ /___// / / , _/ _// _/_ / /__/ /_/ / __ |
/_/|_/ |___/___/_/  /_/    /_/ /_/|_/___/___(_)____/\____/_/ |_|
                                                                
--]]

-- This file can be loaded by calling `require('module_name')` from your init.lua

-- keybindings are defined in `keymapping.lua`
-- repo: https://github.com/kyazdani42/nvim-tree.lua

local g = vim.g -- global variables

g.nvim_tree_side                = 'right'
g.nvim_tree_icons               = {default = "‣ "}
g.nvim_tree_git_hl              = 1
g.nvim_tree_ignore              = {'.git', 'node_modules', '.cache'}
g.nvim_tree_tab_open            = 1 
g.nvim_tree_auto_open           = 1
g.nvim_tree_show_icons          = {git = 1, folders = 1, files = 1}
g.nvim_tree_special_files       = {'README.md', 'Makefile', 'MAKEFILE'}
g.nvim_tree_hide_dotfiles       = 1
g.nvim_tree_indent_markers      = 1
g.nvim_tree_width_allow_resize  = 1

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
g.nvim_tree_bindings = {
    { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },                 -- default
    { key = "x",                            cb = tree_cb("cut") },                -- default  
    { key = "c",                            cb = tree_cb("copy") },               -- default 
    { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },               -- default 
    { key = "q",                            cb = tree_cb("close") },              -- default 
    { key = "p",                            cb = tree_cb("paste") },              -- default 
    { key = "<C-o>",                        cb = tree_cb("split") },              -- default <C-x>
    { key = "<C-O>",                        cb = tree_cb("vsplit") },             -- default <C-v>
    { key = "O",                            cb = tree_cb("tabnew") },             -- default <C-t>
    { key = "a",                            cb = tree_cb("create") },             -- default 
    { key = "d",                            cb = tree_cb("remove") },             -- default 
    { key = "r",                            cb = tree_cb("rename") },             -- default 
    { key = "-",                            cb = tree_cb("dir_up") },             -- default 
    { key = "<Tab>",                        cb = tree_cb("preview") },            -- default 
    { key = "R",                            cb = tree_cb("refresh") },            -- default 
    { key = "y",                            cb = tree_cb("copy_name") },          -- default  
    { key = "Y",                            cb = tree_cb("copy_path") },          -- default  
    { key = "<S-CR>",                       cb = tree_cb("close_node") },         -- default 
    { key = "<BS>",                         cb = tree_cb("close_node") },         -- default 
    { key = "P",                            cb = tree_cb("parent_node") },        -- default 
    { key = "<C-r>",                        cb = tree_cb("full_rename") },        -- default 
    { key = "s",                            cb = tree_cb("system_open") },        -- default 
    { key = "g?",                           cb = tree_cb("toggle_help") },        -- default 
    { key = "J",                            cb = tree_cb("last_sibling") },       -- default 
    { key = "<",                            cb = tree_cb("prev_sibling") },       -- default 
    { key = ">",                            cb = tree_cb("next_sibling") },       -- default 
    { key = "[c",                           cb = tree_cb("prev_git_item") },      -- default 
    { key = "]c",                           cb = tree_cb("next_git_item") },      -- default 
    { key = "K",                            cb = tree_cb("first_sibling") },      -- default 
    { key = "I",                            cb = tree_cb("toggle_ignored") },     -- default 
    { key = "H",                            cb = tree_cb("toggle_dotfiles") },    -- default 
    { key = "gy",                           cb = tree_cb("copy_absolute_path") }, -- default 
}
