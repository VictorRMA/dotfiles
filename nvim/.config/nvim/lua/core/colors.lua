local status_ok, color_scheme = pcall(require, 'gruvbox')
if not status_ok then
  return
end

vim.opt.background = "dark"
vim.cmd([[colorscheme kanagawa]])

require('lualine').setup{
  options = { theme  = 'kanagawa' },
}
