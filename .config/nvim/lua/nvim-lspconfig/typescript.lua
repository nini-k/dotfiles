--[[
   _  ___   ________  ___    __   _______  _________  _  _______________  __   __  _____ 
  / |/ / | / /  _/  |/  /___/ /  / __/ _ \/ ___/ __ \/ |/ / __/  _/ ___/ / /  / / / / _ |
 /    /| |/ // // /|_/ /___/ /___\ \/ ___/ /__/ /_/ /    / _/_/ // (_ / / /__/ /_/ / __ |
/_/|_/ |___/___/_/  /_/   /____/___/_/   \___/\____/_/|_/_/ /___/\___(_)____/\____/_/ |_|
                                                                                         
--]]

-- This file can be loaded by calling `require('module_name')` from your init.lua

-- repo: https://github.com/neovim/nvim-lspconfig

local cmd      = vim.cmd          -- execute Vim commands
local protocol = vim.lsp.protocol -- 

local nvim_lsp = require("lspconfig")

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end	
    
    local opts = { noremap=true, silent=true } -- noremap mappings opts
    
    -- see `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
    buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    buf_set_keymap("n", "<leader>H", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
    buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)

    -- some configurations
    -- buf_set_keymap('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    -- buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    -- buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    -- buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    -- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    -- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    -- buf_set_keymap('n', '<C-j>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    -- buf_set_keymap('n', '<S-C-j>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    -- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    -- buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    
    -- formatting
    cmd [[autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)]]
    cmd [[autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)]] 
    cmd [[autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)]]

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

nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    filetypes = { "javascript","typescript" }
}

nvim_lsp.diagnosticls.setup {
    on_attach = on_attach,
    filetypes = { "javascript", "json", "typescript", "css", "markdown" },

    init_options = {
        linters = {
            eslint = {
                command      = "eslint_d",
                rootPatterns = { ".git" },
                debounce     = 100,
                args         = { "--stdin", "--stdin-filename", "%filepath", "--format", "json" },
                sourceName   = "eslint_d",
                parseJson = {
                    errorsRoot = "[0].messages",
                    line       = "line",
                    column     = "column",
                    endLine    = "endLine",
                    endColumn  = "endColumn",
                    message    = "[eslint] ${message} [${ruleId}]",
                    security   = "severity"
                },

                securities = { [2] = "error", [1] = "warning" }
            },
        },

        filetypes = {
            javascript = "eslint",
            typescript = "eslint",
        },

        formatters = {
            eslint_d = {
                command      = "eslint_d",
                args         = { "--stdin", "--stdin-filename", "%filename", "--fix-to-stdout" },
                rootPatterns = { ".git" },
            },
            prettier = {
                command = "prettier",
                args    = { "--stdin-filepath", "%filename" }
            }
        },

        formatFiletypes = {
            css        = "prettier",
            javascript = "eslint_d",
            json       = "prettier",
            less       = "prettier",
            typescript = "eslint_d",
            json       = "prettier",
            markdown   = "prettier",
        }
    }
}
