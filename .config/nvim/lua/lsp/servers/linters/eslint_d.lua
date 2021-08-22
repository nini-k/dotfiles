--[[
       __________   _____  ________  ___    __   __  _____ 
      / __/ __/ /  /  _/ |/ /_  __/ / _ \  / /  / / / / _ |
     / _/_\ \/ /___/ //    / / /   / // / / /__/ /_/ / __ |
    /___/___/____/___/_/|_/ /_/___/____(_)____/\____/_/ |_|
                              /___/                        

    repo:         https://github.com/mantoni/eslint_d.js/ 
    installation: npm install -g eslint_d

    this file can be loaded by calling `require("module_name")` from init.lua
]]

local eslint = {
  lintStdin          = true,
  lintCommand        = "eslint_d -f visualstudio --stdin --stdin-filename ${INPUT}",
  formatStdin        = true,
  lintFormats        = {"%f(%l,%c): %tarning %m", "%f(%l,%c): %rror %m"},
  formatCommand      = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  lintIgnoreExitCode = true
}

return eslint
