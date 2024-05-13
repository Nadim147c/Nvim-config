-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

local M = {}

M.ui = {
    transparency = true,
    theme = "catppuccin",
    nvdash = { load_on_startup = false },

    hl_override = {
        Comment = { italic = true },
        ["@comment"] = { italic = true },
    },
}

return M
