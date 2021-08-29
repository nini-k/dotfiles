--[[
       __   _______  _______  ________     __   __  _____ 
      / /  / __/ _ \/ __/ _ |/ ___/ _ |   / /  / / / / _ |
     / /___\ \/ ___/\ \/ __ / (_ / __ |_ / /__/ /_/ / __ |
    /____/___/_/  /___/_/ |_\___/_/ |_(_)____/\____/_/ |_|

    this file can be loaded by calling `require("module_name") from init.lua`
]]

-- local saga = 

require("lspsaga").init_lsp_saga {
    code_action_prompt       = { enable = false },
    rename_prompt_prefix     = "",
    finder_reference_icon    = " ",
    finder_definition_icon   = " ",
    use_saga_diagnostic_sign = false,
}
