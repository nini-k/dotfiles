--[[
   _  ___   ________  ___    _________  __  ______  ____  __   __  _____ 
  / |/ / | / /  _/  |/  /___/ ___/ __ \/  |/  / _ \/ __/ / /  / / / / _ |
 /    /| |/ // // /|_/ /___/ /__/ /_/ / /|_/ / ___/ _/_ / /__/ /_/ / __ |
/_/|_/ |___/___/_/  /_/    \___/\____/_/  /_/_/  /___(_)____/\____/_/ |_|
                                                                         
--]]

-- This file can be loaded by calling `require('module_name')` from your init.lua

-- keybindings are defined in `keymapping.lua`
-- repo: https://github.com/hrsh7th/nvim-compe 

local o = vim.o -- global options

o.completeopt = "menuone,noselect"

require("compe").setup {
    debug            = false;
    enabled          = true;
    preselect        = "enable";
    min_length       = 1;
    autocomplete     = true;
    throttle_time    = 80;
    source_timeout   = 200;
    max_abbr_width   = 100;
    max_kind_width   = 100;
    max_menu_width   = 100;
    incomplete_delay = 400;

    documentation  = {
      border       = { "", "" ,"", " ", "", "", "", " " }, -- the border option is the same as `|help nvim_open_win|`
      max_width    = 120,
      min_width    = 60,
      max_height   = math.floor(vim.o.lines * 0.3),
      min_height   = 1,
      winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    };

    source = {
      path          = true;
      calc          = true;
      tags          = true;
      spell         = true;
      vsnip         = true;
      buffer        = true;
      nvim_lsp      = true;
      nvim_lua      = true;
      treesitter    = true;
      snippets_nvim = true;
    };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end
