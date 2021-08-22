--[[ 
       ___  ___  ___________________________     ___    __   __  _____ 
      / _ \/ _ \/ __/_  __/_  __/  _/ __/ _ \   / _ \  / /  / / / / _ |
     / ___/ , _/ _/  / /   / / _/ // _// , _/  / // / / /__/ /_/ / __ |
    /_/  /_/|_/___/ /_/   /_/ /___/___/_/|_|__/____(_)____/\____/_/ |_|
                                          /___/                        
    
    repo:         https://github.com/mikew/prettier_d_slim
    installation: npm install -g prettier_d_slim

    this file can be loaded by calling `require("module_name")` from init.lua
]]

local prettier  = {
  formatStdin   = true,
  formatCommand = "prettier_d_slim --stdin --stdin-filepath ${INPUT}"
}

return prettier
