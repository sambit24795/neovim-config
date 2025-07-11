-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "marksman",
        "ts_ls",
        "gopls",
        "html",
        -- "omnisharp",
        "cssls",
        "emmet_ls",
        "dockerls",
        "docker_compose_language_service"
        -- "clangd"
        -- add more arguments for adding more language servers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        "prettier",
        "golangci_lint_ls",
        "gofumpt",
        "goimports",
        "goimports-reviser",
        "golines",
        "hadolint",
        -- "csharpier",
        "clang-format"
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        -- "netcoredbg"
        -- "python",
        -- add more arguments for adding more debuggers
      },
    },
  },
}
