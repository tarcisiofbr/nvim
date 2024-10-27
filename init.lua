require("config.lazy")
require('mason').setup()
require('mini.surround').setup()
require('mason-lspconfig').setup({
	ensure_installed = {"pylsp", "r_language_server"}
})
require'lspconfig'.r_language_server.setup{}
require'lspconfig'.pylsp.setup{}
require("nvim-treesitter.configs").setup({
            ensure_installed = { "markdown", "markdown_inline", "r", "rnoweb", "yaml", "python", "awk", "bash"},
            highlight = { enable = true },
        })

vim.cmd("set colorcolumn=80")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set scrolloff=5")
vim.cmd("colorscheme catppuccin")

-- # Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- # My keymaps

vim.keymap.set('i', '<M-->', ' <- ')
vim.keymap.set('i', '<M-m>', ' %>% ')
vim.keymap.set('i', '<M-i>', ' %in% ')

