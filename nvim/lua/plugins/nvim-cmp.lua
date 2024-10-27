return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
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
