vim.opt.background = "dark"
vim.cmd([[colorscheme kanagawa]])

require('lualine').setup{
  options = { theme  = 'kanagawa' },
}
