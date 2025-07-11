-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    -- opts variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics

    -- Only insert new sources, do not replace the existing ones
    -- (If you wish to replace, use `opts.sources = {}` instead of the `list_insert_unique` function)
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier.with {
        extra_args = { "--single-quote", "--trailing-comma", "all", "--tab-width", "2" },
      },
      -- -- null_ls.builtins.diagnostics.golangci_lint,
      -- -- null_ls.builtins.formatting.gofmt,
      -- null_ls.builtins.formatting.gofumpt,
      -- null_ls.builtins.formatting.goimports_reviser,
      -- null_ls.builtins.formatting.golines
    })
  end,
}
