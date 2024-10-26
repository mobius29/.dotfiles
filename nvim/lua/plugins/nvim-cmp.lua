return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "saadparwaiz1/cmp_luasnip", -- LuaSnip과의 통합을 위한 플러그인 추가
      "L3MON4D3/LuaSnip", -- LuaSnip 스니펫 엔진 추가
    },
    opts = function(_, opts)
      -- Copilot 소스 추가
      table.insert(opts.sources, 1, {
        name = "copilot",
        group_index = 1,
        priority = 100,
      })

      -- LuaSnip 소스 추가
      table.insert(opts.sources, {
        name = "luasnip",
        group_index = 1,
      })
    end,
  },
}
