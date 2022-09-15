local status_ok, color_scheme = pcall(require, 'gruvbox')
if not status_ok then
  return
end

vim.opt.background = "dark"
vim.cmd([[colorscheme gruvbox]])

require('lualine').setup{
  options = { theme  = 'gruvbox' },
}
