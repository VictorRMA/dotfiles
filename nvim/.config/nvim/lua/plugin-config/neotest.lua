local map = require("core.utils").map
local neotest = require 'neotest'

neotest.setup({
  adapters = {
    require("neotest-elixir"),
  }
})

map('n', '<leader>tn', function() neotest.run.run() end)
map('n', '<leader>tf', function() neotest.run.run(vim.fn.expand '%') end)
map('n', '<leader>ta', function() neotest.run.run 'src' end)
map('n', '<leader>tl', function() neotest.run.run_last() end)
map('n', '<leader>ts', function() neotest.summary.toggle() end)
