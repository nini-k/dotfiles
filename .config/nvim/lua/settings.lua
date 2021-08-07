-------------------- SETTINGS -------------------------------
--
-- This file can be loaded by calling `require('module_name')` from your init.lua

local cmd = vim.cmd     				-- execute Vim commands
local exec = vim.api.nvim_exec 				-- execute Vimscript
local fn = vim.fn       				-- call Vim functions
local g = vim.g         				-- global variables
local o = vim.o         				-- global options
local b = vim.bo        				-- buffer-scoped options
local w = vim.wo        				-- windows-scoped options

o.mouse = 'a'               -- enable mouse support
o.bs = '2'                  -- enable mouse support
o.clipboard = 'unnamedplus' -- copy/paste to system clipboard
b.swapfile = false          -- don't use swapfile

o.hidden = true     -- enable background buffers
o.history = 100     -- remember n lines in history
o.lazyredraw = true -- faster scrolling
b.synmaxcol = 320   -- max column for syntax highlight

b.expandtab = true   -- use spaces instead of tabs
b.shiftwidth = 4     -- shift 4 spaces when tab
b.tabstop = 4        -- 1 tab == 4 spaces
b.smartindent = true -- autoindent new lines

o.syntax = 'enable'     -- enable syntax highlighting
w.number = true         -- show line number
o.showmatch = true      -- highlight matching parenthesis
w.foldmethod = 'syntax' -- enable folding (default 'foldmarker')
o.splitright = true     -- vertical split to the right
o.splitbelow = true     -- orizontal split to the bottom
o.ignorecase = true     -- ignore case letters when search
o.smartcase = true      -- ignore lowercase for the whole pattern

-- w.colorcolumn = '120' -- line lenght marker at 80 columns
