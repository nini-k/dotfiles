--[[
   _________________________  ___________  __   __  _____ 
  / __/ __/_  __/_  __/  _/ |/ / ___/ __/ / /  / / / / _ |
 _\ \/ _/  / /   / / _/ //    / (_ /\ \_ / /__/ /_/ / __ |
/___/___/ /_/   /_/ /___/_/|_/\___/___(_)____/\____/_/ |_|
                                                          
--]]

-- This file can be loaded by calling `require('module_name')` from your init.lua

local g    = vim.g         	   -- global variables
local o    = vim.o         	   -- global options
local b    = vim.bo        	   -- buffer-scoped options
local w    = vim.wo        	   -- windows-scoped options
local fn   = vim.fn       	   -- call Vim functions
local cmd  = vim.cmd     	   -- execute Vim commands
local exec = vim.api.nvim_exec -- execute Vimscript

o.termguicolors = true       -- enable 24-bit RGB colors
cmd([[colorscheme molokai]]) -- set colorscheme

o.bs        = "2"           -- enable mouse support
o.mouse     = "a"           -- enable mouse support
o.swapfile  = false         -- don't use swapfile
o.clipboard = "unnamedplus" -- copy/paste to system clipboard

o.hidden     = true -- enable background buffers
o.history    = 100  -- remember n lines in history
b.synmaxcol  = 320  -- max column for syntax highlight
o.lazyredraw = true -- faster scrolling

o.tabstop     = 4    -- 1 tab == 4 spaces
o.expandtab   = true -- use spaces instead of tabs
o.shiftwidth  = 4    -- shift 4 spaces when tab
o.smartindent = true -- autoindent new lines

o.syntax     = "enable" -- enable syntax highlighting
w.number     = true     -- show line number
o.showmatch  = true     -- highlight matching parenthesis
o.smartcase  = true     -- ignore lowercase for the whole pattern
w.foldmethod = "syntax" -- enable folding (default "foldmarker")
o.splitright = true     -- vertical split to the right
o.splitbelow = true     -- orizontal split to the bottom
o.ignorecase = true     -- ignore case letters when search

-- w.colorcolumn = "120" -- line lenght marker at 80 columns
