return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  opts = { provider = "openai" },
  build = "make",
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    "zbirenbaum/copilot.lua",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = { insert_mode = true },

          -- required for Windows users
          -- use_absolute_path = true,
        },
      },
    },
  },
  enabled = false,
}
