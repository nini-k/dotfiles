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

g.nvim_tree_git_hl              = 1
g.nvim_tree_side                = 'right'
g.nvim_tree_icons               = {default = "‣ "}
g.nvim_tree_ignore              = {'.git', 'node_modules', '.cache'}
g.nvim_tree_auto_open           = 1
g.nvim_tree_show_icons          = {git = 1, folders = 1, files = 1}
g.nvim_tree_special_files       = {'README.md', 'Makefile', 'MAKEFILE'}
g.nvim_tree_hide_dotfiles       = 1
g.nvim_tree_indent_markers      = 1
g.nvim_tree_width_allow_resize  = 1
-- g.nvim_tree_gitignore = 1

