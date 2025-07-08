-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.utility.hover-nvim" },
  { import = "astrocommunity.scrolling.vim-smoothie" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.search.nvim-spectre" },
  -- import/override with your plugins folder
}
