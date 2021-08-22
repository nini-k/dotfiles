--[[
       ___  ___   ______ ____   ____  __   __  _____ 
      / _ )/ _ | / __/ // / /  / __/ / /  / / / / _ |
     / _  / __ |_\ \/ _  / /___\ \_ / /__/ /_/ / __ |
    /____/_/ |_/___/_//_/____/___(_)____/\____/_/ |_|

    repo:         https://github.com/bash-lsp/bash-language-server
    example:      https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#bashls
    installation: npm i -g bash-language-server

    this file can be loaded by calling `require("module_name")` from init.lua
]]

return function(language_server_path)
    local bin_path = language_server_path .. "/bash-language-server"
    return {
        cmd       = {bin_path, "start"},
        filetypes = {"sh"}
    }
end
