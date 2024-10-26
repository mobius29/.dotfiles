require("tokyonight")

return {
  {
    "folke/tokyonight.nvim",
    ---@class tokyonight.Config
    opts = {
      priority = 999,
      transparent = true,
      terminal_colors = false,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        comments = { fg = "#E6B9DE", italic = true },
        keywords = { fg = "#CAEDFF", italic = true },
        variables = { fg = "#F8E559", italic = true },
        functions = { fg = "#8B93FF", italic = true },
      },
      on_colors = function(colors) end,
      cache = true,
    },
  },
}
