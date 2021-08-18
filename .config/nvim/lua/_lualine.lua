--[[
   __   __  _____   __   _____  ______  __   __  _____ 
  / /  / / / / _ | / /  /  _/ |/ / __/ / /  / / / / _ |
 / /__/ /_/ / __ |/ /___/ //    / _/_ / /__/ /_/ / __ |
/____/\____/_/ |_/____/___/_/|_/___(_)____/\____/_/ |_|
                                                       
--]]

-- This file can be loaded by calling `require('module_name')` from your init.lua

-- keybindings are defined in `keymapping.lua`
-- repo: https://github.com/hoob3rt/lualine.nvim

require("lualine").setup {
    -- TODO: settings
    options = {
        theme = "molokai",
        icons_enabled = true
    };

    sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch"},
        lualine_c = {"filename"},
        lualine_x = {
            {"diagnostics", sources = {"nvim_lsp"}, symbols = {error = " ", warn = " ", info = " ", hint = " "} },
            "encoding",
            "filetype"
        },
        lualine_y = {"progress"},
        lualine_z = {"location"}
    };

    extensions = {"fugitive"};
}

