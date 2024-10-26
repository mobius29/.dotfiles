return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("luasnip.loaders.from_lua").load({ paths = { vim.fn.stdpath("config") .. "/lua/snippets/" } })
      require("luasnip.loaders.from_vscode").lazy_load()

      local opts = { noremap = true, silent = true }

      -- 인서트 모드에서 스니펫 확장 및 이동 (Ctrl + l)
      vim.api.nvim_set_keymap("i", "<C-l>", "<cmd>lua require'luasnip'.expand_or_jump()<CR>", opts)
      -- 셀렉트 모드에서 스니펫 확장 및 이동 (Ctrl + l)
      vim.api.nvim_set_keymap("s", "<C-l>", "<cmd>lua require'luasnip'.expand_or_jump()<CR>", opts)

      -- 인서트 모드에서 이전 노드로 이동 (Ctrl + h)
      vim.api.nvim_set_keymap("i", "<C-h>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
      -- 셀렉트 모드에서 이전 노드로 이동 (Ctrl + h)
      vim.api.nvim_set_keymap("s", "<C-h>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)

      -- 스니펫 선택 창 (Ctrl + k)
      vim.api.nvim_set_keymap("i", "<C-k>", "<cmd>lua require'luasnip'.change_choice(1)<CR>", opts)
      vim.api.nvim_set_keymap("s", "<C-k>", "<cmd>lua require'luasnip'.change_choice(1)<CR>", opts)
    end,
  },
}
