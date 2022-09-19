-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to space
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- map Esc to jk
map('i', 'jk', '<Esc>')
map('i', 'kj', '<Esc>')

-- fast saving with <leader> and w
map('n', '<leader>w', ':w<cr>')

