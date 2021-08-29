--[[
       _  ___   ________  ___    _________  __  ______  ____  __   __  _____ 
      / |/ / | / /  _/  |/  /___/ ___/ __ \/  |/  / _ \/ __/ / /  / / / / _ |
     /    /| |/ // // /|_/ /___/ /__/ /_/ / /|_/ / ___/ _/_ / /__/ /_/ / __ |
    /_/|_/ |___/___/_/  /_/    \___/\____/_/  /_/_/  /___(_)____/\____/_/ |_|
                                                                             
    repo: https://github.com/hrsh7th/nvim-compe 

    keybindings are defined in `keymapping.lua`

    this file can be loaded by calling `require("module_name")` from your init.lua
--]]

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
