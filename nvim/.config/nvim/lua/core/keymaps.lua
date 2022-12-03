-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------
local map = require("core.utils").map

-- Change leader to space
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- map Esc to jk
map('i', 'jk', '<Esc>')

-- fast saving with <leader> and w
map('n', '<leader>w', ':w<cr>')

map('n', '<leader>pv', ':Lex<cr>')
