vim.cmd("set number")
vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  underlines = true,
})

vim.cmd("tnoremap <Esc> <C-\\><C-n>")
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
