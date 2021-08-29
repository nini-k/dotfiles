--[[
       __________  ___  __   __  _____ 
      / __/ __/  |/  / / /  / / / / _ |
     / _// _// /|_/ / / /__/ /_/ / __ |
    /___/_/ /_/  /_(_)____/\____/_/ |_|
                                       
    repo:         https://github.com/mattn/efm-langserver 
    example:      https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#efm
    installation: go get github.com/mattn/efm-langserver && ln -s $GOPATH/bin/efm-langserver /usr/local/bin/efm-langserver

    this file can be loaded by calling `require("module_name")` from init.lua
]]

local lsp        = require("lspconfig")
local eslint_d   = require("lsp.servers.linters.eslint_d")
local prettier_d = require("lsp.servers.formatters.prettier_d")

local linter    = eslint_d
local formatter = prettier_d

local languages = {
    yaml               = {formatter},
    json               = {formatter},
    html               = {formatter},
    scss               = {formatter},
    css                = {formatter},
    markdown           = {formatter},
    javascript         = {formatter, linter},
    typescript         = {formatter, linter},
    typescriptreact    = {formatter, linter},
    javascriptreact    = {formatter, linter},
    ["javascript.jsx"] = {formatter, linter},
    ["typescript.tsx"] = {formatter, linter},

    -- vue                = {formatter, linter},
}

return function(language_server_path)
    local bin_path = language_server_path .. "/efm-langserver"
    return {
        cmd          = { bin_path, "-loglevel", "10", "-logfile", "/tmp/efm.log"},
        filetypes    = vim.tbl_keys(languages),
        init_options = {documentFormatting = true},
        settings     = { languages = languages, rootMarkers = { "package.json", ".eslintrc.json", ".git" }, lintDebounce = 500 },
        -- root_dir     = function(fname)
        --     local cwd = lsp.util.root_pattern("tsconfig.json")(fname) or
        --     lsp.util.root_pattern(".eslintrc.json", ".git")(fname) or
        --     lsp.util.root_pattern("package.json", ".git/",".zshrc")(fname);
        --     return cwd
        -- end,
    }
end
