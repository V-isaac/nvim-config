local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local key = vim.keymap

key.set("n","<leader>a", mark.add_file)
key.set("n","<C-e>", ui.toggle_quick_menu)

key.set("n","<leader>1", function() ui.nav_file(1) end)
key.set("n","<leader>2", function() ui.nav_file(2) end)
key.set("n","<leader>3", function() ui.nav_file(3) end)
key.set("n","<leader>4", function() ui.nav_file(4) end)

