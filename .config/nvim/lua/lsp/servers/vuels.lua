--[[
     _   ____  ________   ____  __   __  _____ 
    | | / / / / / __/ /  / __/ / /  / / / / _ |
    | |/ / /_/ / _// /___\ \_ / /__/ /_/ / __ |
    |___/\____/___/____/___(_)____/\____/_/ |_|
                                           
    repo:         https://github.com/vuejs/vetur/tree/master/server
    example:      https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#vuels
    installation: npm install -g vls

    this file can be loaded by calling `require("module_name")` from init.lua
]]

return function(language_server_path, on_attach)
    local bin_path = language_server_path .. "/vls"
    return {
        cmd       = {bin_path, "--stdio" },
        filetypes = { "vue" },
        on_attach = function(client, bufnr)
            on_attach(client, bufnr)
        end
    }
end
