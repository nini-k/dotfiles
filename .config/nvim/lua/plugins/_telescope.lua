--[[
     ____________   _________________  ___  ____  __   __  _____ 
    /_  __/ __/ /  / __/ __/ ___/ __ \/ _ \/ __/ / /  / / / / _ |
     / / / _// /__/ _/_\ \/ /__/ /_/ / ___/ _/_ / /__/ /_/ / __ |
    /_/ /___/____/___/___/\___/\____/_/  /___(_)____/\____/_/ |_|
                                                                 
    repo: https://github.com/nvim-telescope/telescope.nvim

    keybindings are defined in `keymapping.lua`

    this file can be loaded by calling `require("module_name")` from your init.lua
--]]

local actions = require("telescope.actions")

require("telescope").setup{
    defaults = {
        file_ignore_patterns = { "node_modules" },
        mappings = {
            n = {
              ["q"] = actions.close
            },
        },
    }
}
