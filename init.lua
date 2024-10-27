require("config.lazy")
require('mason').setup()
require('mini.surround').setup()
require('mason-lspconfig').setup({
	ensure_installed = {"pylsp", "r_language_server"}
})
require'lspconfig'.r_language_server.setup{}
require'lspconfig'.pylsp.setup{}

vim.cmd("set colorcolumn=80")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set scrolloff=5")
vim.cmd("colorscheme catppuccin")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
