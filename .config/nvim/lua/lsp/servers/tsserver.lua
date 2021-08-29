--[[
     _____________________ _   _________    __   __  _____ 
    /_  __/ __/ __/ __/ _ \ | / / __/ _ \  / /  / / / / _ |
     / / _\ \_\ \/ _// , _/ |/ / _// , _/ / /__/ /_/ / __ |
    /_/ /___/___/___/_/|_||___/___/_/|_(_)____/\____/_/ |_|
                                                  
    repo:         https://github.com/typescript-language-server/typescript-language-server  
    example:      https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#tsserver
    installation: npm install -g typescript-language-server

    this file can be loaded by calling `require("module_name")` from init.lua
]]

local protocol = vim.lsp.protocol

return function(language_server_path, on_attach)
    local bin_path = language_server_path .. "/typescript-language-server"
    return {
        cmd       = {bin_path, "--stdio" },
        settings  = { documentFormatting = false },
        on_attach = function(client, bufnr)
            on_attach(client, bufnr)
            
            -- tsserver, stop messing with prettier
            client.resolved_capabilities.document_formatting = false

            -- compltion icons
            protocol.CompletionItemKind = {
                "", -- text
                "", -- method
                "", -- function
                "", -- constructor
                "", -- field
                "", -- variable
                "", -- class
                "ﰮ", -- interface
                "", -- module
                "", -- property
                "", -- unit
                "", -- value
                "", -- enum
                "", -- keyword
                "﬌", -- snippet
                "", -- color
                "", -- file
                "", -- reference
                "", -- folder
                "", -- enumMember
                "", -- constant
                "", -- struct
                "", -- event
                "ﬦ", -- operator
                "", -- typeParameter
            }
        end
    }
end
