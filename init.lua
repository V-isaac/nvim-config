-- local g = vim.global
local opt = vim.opt
vim.g.mapleader = " "

require("visaac")
require("visaac.remap")
require("config.lazy")

-- formating
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftwidth = 4
opt.smartindent = true
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]
opt.wrap = false



opt.clipboard = "unnamedplus" -- inside clip with yank/x/d

--lsp
vim.lsp.enable({
  "lsp-c",
  "lsp-lua",
})

vim.diagnostic.config({
  virtual_lines = false,
  virtual_text = true,
})

--[[
for me to remember some things
CTRL+X CTRL+O <-- fucks everything

ctrl+]  - jump to def
ctrl+t  - jump back
grr 	- references
grn 	- rename
K		- hover documentation

:help lsp - help meh
]] --

--pretty things
opt.colorcolumn = "80"
vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = "grey" })
opt.number = true
opt.relativenumber = true

opt.hlsearch = false -- no highlight during search
opt.incsearch = true -- regex search

opt.signcolumn = "yes"
opt.scrolloff = 15

opt.ruler = true
opt.cursorline = true
opt.guicursor = ""

opt.updatetime = 50 -- fast updating


require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = {     -- :h background
    dark = "mocha",
  },
  transparent_background = false, -- disables setting the background color.
  term_colors = true,             -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = true,               -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15,            -- percentage of the shade to apply to the inactive window
  },

  no_italic = true,
  styles = {       -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = {}, -- Change the style of comments
    conditionals = {},
  },
  color_overrides = {},
  custom_highlights = {},
})
vim.cmd.colorscheme "catppuccin"
