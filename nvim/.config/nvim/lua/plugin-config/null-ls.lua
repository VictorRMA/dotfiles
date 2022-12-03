-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
  return
end

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.credo,
        null_ls.builtins.diagnostics.eslint_d.with({ -- js/ts linter
          -- only enable eslint if root has .eslintrc.js
          condition = function(utils)
            return utils.root_has_file(".eslintrc.js") -- change file extension if you use something else
          end,
        }),
    },
})
