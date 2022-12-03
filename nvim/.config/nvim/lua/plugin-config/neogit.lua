local map = require("core.utils").map

require('neogit').setup {
  disable_commit_confirmation = true,
  integrations = {
    diffview = true
  }
}

map('n', '<leader>gs', ':Neogit<cr>')

