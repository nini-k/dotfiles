--[[
       ___  ____  _______ _________  __   ____  __   __  _____ 
      / _ \/ __ \/ ___/ //_/ __/ _ \/ /  / __/ / /  / / / / _ |
     / // / /_/ / /__/ ,< / _// , _/ /___\ \_ / /__/ /_/ / __ |
    /____/\____/\___/_/|_/___/_/|_/____/___(_)____/\____/_/ |_|
                                                           
    repo:         https://github.com/rcjsuen/dockerfile-language-server-nodejs
    example:      https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#dockerls
    installation: npm i -g dockerfile-language-server-nodejs

    this file can be loaded by calling `require("module_name")` from init.lua
]]

return function(language_server_path)
    local bin_path = language_server_path .. "/docker-langserver"
    return {
        cmd       = { bin_path, "--stdio" },
        filetypes = { "Dockerfile", "dockerfile" }
    }
end
