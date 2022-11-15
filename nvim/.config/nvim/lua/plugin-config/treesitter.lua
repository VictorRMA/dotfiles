require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
  ensure_installed = {
    "elixir",
    "typescript",
    "html",
    "lua"
  }
}
