return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function ()
    require('neogit').setup()

    local keymap = vim.keymap

    keymap.set("n", "<leader>gs", "<cmd>Neogit<cr>", { desc = "Neogit" })
  end
}
