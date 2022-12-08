local map = require("core.utils").map

require("telescope").load_extension "file_browser"

-- remaps
map('n', '<leader>ff', ':Telescope find_files<cr>')
map('n', '<leader>fg', ':Telescope git_files<cr>')
map('n', '<leader>fa', ':lua require("telescope.builtin").live_grep({ path_display = { "smart" } })<cr>')
map('n', '<leader>fb', ':Telescope file_browser<cr>')
map('n', '<leader>fh', ':Telescope help_tags<cr>')
map('n', '<leader>fr', ':Telescope resume<cr>')
