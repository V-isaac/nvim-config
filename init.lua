print("initialised")
require("visaac")
require("visaac.remap")
require("config.lazy")

local g = vim.global
local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 2
opt.smartindent = true

vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

opt.colorcolumn = "80"
vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = "grey" })

opt.number = true
opt.relativenumber = true
vim.wo.wrap = false
opt.ruler = true 
opt.cursorline = true

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },

		no_italic = true,
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = {}, -- Change the style of comments
				conditionals = {},
    },
    color_overrides = {},
    custom_highlights = {},
})
vim.cmd.colorscheme "catppuccin"
