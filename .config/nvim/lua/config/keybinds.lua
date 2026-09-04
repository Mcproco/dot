local builtin = require('telescope.builtin')

vim.keymap.set('n', ',', function()
  vim.diagnostic.open_float({ focusable = true })
end)

vim.keymap.set('n', '<C-n>', ":Neotree filesystem reveal left<CR>", { silent = true })
vim.keymap.set('n', '<Esc>', ":noh<CR>", { silent = true })
vim.keymap.set('n', '<C-h>', builtin.find_files)
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
