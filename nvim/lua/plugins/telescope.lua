return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope")

      telescope.setup({
        defaults = {
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
          },
          prompt_prefix = "> ",
          selection_caret = "> ",
          path_display = { "truncate" },
          sorting_strategy = "ascending",
          layout_config = {
            prompt_position = "top",
          },
        },
        pickers = {
          find_files = {
            theme = "dropdown", -- 찾기 UI 테마 설정
          },
        },
        extensions = {},
      })

      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts) -- 파일 찾기
      map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts) -- 내용 검색
      map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts) -- 버퍼 탐색
      map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts) -- 도움말 찾기
    end,
  },
}
