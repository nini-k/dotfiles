--[[

    __  ____  _____   __   ____  __   __  _____ 
    \ \/ /  |/  / /  / /  / __/ / /  / / / / _ |
     \  / /|_/ / /__/ /___\ \_ / /__/ /_/ / __ |
     /_/_/  /_/____/____/___(_)____/\____/_/ |_|
                                            
    repo:         https://github.com/redhat-developer/yaml-language-server 
    example:      https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#ymlls 
    installation: yarn global add yaml-language-server

    this file can be loaded by calling `require("module_name")` from init.lua
]]

return function(language_server_path)
    local bin_path = language_server_path .. "/yaml-language-server"
    return {
        cmd       = { bin_path, "--stdio" },
        filetypes = { "yaml", "yml" }
    }
end
