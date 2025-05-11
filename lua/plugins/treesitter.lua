
-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "javascript",
      "css",
      "scss",
      "html",
      "go",
      "json"
      -- add more arguments for adding more treesitter parsers
    },
  },
}
