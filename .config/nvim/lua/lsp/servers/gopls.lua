--[[
      _________  ___  __   ____  __   __  _____ 
     / ___/ __ \/ _ \/ /  / __/ / /  / / / / _ |
    / (_ / /_/ / ___/ /___\ \_ / /__/ /_/ / __ |
    \___/\____/_/  /____/___(_)____/\____/_/ |_|

    repo:         https://github.com/mattn/efm-langserver 
    example:      https://github.com/golang/tools/blob/master/gopls/doc/vim.md#neovim 
    installation: go install golang.org/x/tools/gopls@latest && ln -s $GOPATH/bin/gopls /usr/local/bin/gopls

    this file can be loaded by calling `require("module_name")` from init.lua
]]

return function(language_server_path)
    local bin_path = language_server_path .. "/gopls"
    return {
        cmd       = {bin_path, "serve"},
        filetypes = {"go"}
        settings  = {
            gopls = {
                analyses = {
                    unusedparams = true,
                },
            staticcheck = true,
            },
        },
    }
end
