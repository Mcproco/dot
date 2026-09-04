vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  underlines = true,
  float = {
      border = "single",
  }
})

vim.cmd("tnoremap <Esc> <C-\\><C-n>")
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.wrap = false
vim.opt.fillchars:append({ eob = " " })
vim.opt.termguicolors = true
vim.cmd("set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50")
vim.cmd("set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20,o:hor50")
vim.opt.termguicolors = true
if vim.lsp.inlay_hint then
    --vim.lsp.inlay_hint.enable(true, { 0 })
end
