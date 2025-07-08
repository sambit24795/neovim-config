
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
      "json",
      "dockerfile"
      -- add more arguments for adding more treesitter parsers
    },
  },
}
