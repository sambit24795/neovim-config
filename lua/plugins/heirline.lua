return {
  "heirline.nvim",
  opts = function(_, opts)
    local status = require "astroui.status"
    -- local ui_config = require("astroui").config

    local function my_tabline_file_info()
      local tabline_component = status.component.tabline_file_info {
        -- highlight only the current buffer name in bold
        hl = function(self)
          if self.is_active then
            return { bold = true, italic = false }
          else
            return {}
          end
        end,
      }

      -- Add buffer number in front of buffer name
      -- table.insert(tabline_component, 1, {
      --   provider = function(self) return self and self.bufnr and (tostring(self.bufnr) .. " ") or "" end,
      --   hl = function(self) return self.is_active and { bold = true, underline = true } or { underline = true } end,
      -- })

      return tabline_component
    end

    opts.tabline[2] = status.heirline.make_buflist(my_tabline_file_info())
  end,
}
