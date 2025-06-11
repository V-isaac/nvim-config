local builtin = require('telescope.builtin')
local key = vim.keymap

key.set('n', '<leader>pf', builtin.find_files, { desc = 'telescope file finder' })
key.set('n', '<C-o>', builtin.git_files, { desc = 'telescope git' })
key.set('n', '<leader>ps', function()
	builtin.grep_string(
	{ search = vim.fn.input("grep > ")},
	{ desc = 'telescope find by word' })
end)
