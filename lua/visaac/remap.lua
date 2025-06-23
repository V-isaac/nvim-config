local key = vim.keymap.set
local lb = vim.lsp.buf

key("n", "<leader>pd", vim.cmd.Ex)
key("n", "<leader>f", lb.format)
