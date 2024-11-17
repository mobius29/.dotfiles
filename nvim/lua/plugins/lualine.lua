return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {
        sections = {
          lualine_x = { "encoding", "filetype" },
          lualine_y = {},
        },
      }
    end,
  },
}
