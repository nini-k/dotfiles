--[[
       _____  ____________  __   __  _____ 
      /  _/ |/ /  _/_  __/ / /  / / / / _ |
     _/ //    // /  / / _ / /__/ /_/ / __ |
    /___/_/|_/___/ /_/ (_)____/\____/_/ |_|
                                           
    this file can be loaded by calling `require("module_name")`
--]]    

local lsp         = require("lspconfig")
local lsp_status  = require("lsp-status")
local keymapping  = require("lsp.keymapping")

-- for debugging lsp
vim.lsp.set_log_level("warn") -- levels by name: "trace", "debug", "info", "warn", "error"

local function on_attach(client, bufnr)
    print(client.name)
    keymapping.set(client.server_capabilities, bufnr)
    lsp_status.on_attach(client, bufnr)
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = {
            prefix  = "■",
            spacing = 0,
        },
        
        -- see: ":help vim.lsp.diagnostic.set_signs()"
        signs            = true, 
        update_in_insert = false,
    }
)

lsp_status.register_progress()

local default_lsp_config   = {on_attach = on_attach, capabilities = lsp_status.capabilities}
local language_server_path = "/usr/local/bin" -- vim.fn.stdpath("cache") .. "/lspconfig"

local servers = {
    efm      = require("lsp.servers.efm")(language_server_path),
    html     = require("lsp.servers.html")(language_server_path),
    gopls    = require("lsp.servers.gopls")(language_server_path, on_attach),
    bashls   = require("lsp.servers.bashls")(language_server_path),
    yamlls   = require("lsp.servers.yamlls")(language_server_path),
    dockerls = require("lsp.servers.dockerls")(language_server_path),
    tsserver = require("lsp.servers.tsserver")(language_server_path, on_attach),

    -- jsonls = require("lsp.servers.jsonls")(language_server_path),
    -- cssls = require("lsp.servers.cssls")(language_server_path),
    -- sumneko_lua = require("lsp.servers.sumneko_lua")(language_server_path),
    -- vuels = require("lsp.servers.vuels")(language_server_path, on_attach),
}

-- init servers
for server, config in pairs(servers) do
  lsp[server].setup(vim.tbl_deep_extend("force", default_lsp_config, config))
end
