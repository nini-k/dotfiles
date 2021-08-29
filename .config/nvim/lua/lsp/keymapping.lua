--[[
       __ ________  ____  ______   ___  ___  _____  _______  __   __  _____ 
      / //_/ __/\ \/ /  |/  / _ | / _ \/ _ \/  _/ |/ / ___/ / /  / / / / _ |
     / ,< / _/   \  / /|_/ / __ |/ ___/ ___// //    / (_ / / /__/ /_/ / __ |
    /_/|_/___/   /_/_/  /_/_/ |_/_/  /_/  /___/_/|_/\___(_)____/\____/_/ |_|
    

    this file can be loaded by calling `require("module_name") from init.lua`
]] 

local cmd = vim.cmd -- execute Vim commands

local M = {}
function M.set(cap, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end	

    local function test_buf_set_keymap(...) bufnoremap(bufnr, ...) end

    local opts = { noremap=true, silent=true } -- noremap mappings opts
    
    -- see `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
    buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
    buf_set_keymap("n", "<leader>H", "<Cmd>lua vim.lsp.buf.hover()<cr>", opts)
    buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)

    -- TODO some configurations
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
    if cap.documentFormattingProvider then
        buf_set_keymap('n','<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
    elseif cap.documentRangeFormattingProvider then
        buf_set_keymap('n','<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
    end
    -- cmd [[autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 1000)]]
    -- cmd [[autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 1000)]]

end

return M
