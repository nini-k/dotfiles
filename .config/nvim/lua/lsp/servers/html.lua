--[[
       __ __________  _____     __   __  _____ 
      / // /_  __/  |/  / /    / /  / / / / _ |
     / _  / / / / /|_/ / /___ / /__/ /_/ / __ |
    /_//_/ /_/ /_/  /_/____(_)____/\____/_/ |_|
                                           
    repo:         https://github.com/hrsh7th/vscode-langservers-extracted 
    example:      https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#html 
    installation: npm i -g vscode-langservers-extracted

    this file can be loaded by calling `require("module_name")` from init.lua
]]

return function(language_server_path)
    local bin_path = language_server_path .. "/vscode-html-language-server"
    return {
        cmd       = { bin_path, "--stdio" },
        filetypes = { "html" },
        init_options = {
            embeddedLanguages    = { css = true, javascript = true },
            configurationSection = { "html", "css", "javascript" }
        }
    }
end
