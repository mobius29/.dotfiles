return {
  -- first: disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    lazy = true,
    dependencies = {
      {
        "rafamadriz/friendly-snippets",
        config = function()
          require("luasnip.loaders.from_snipmate").lazy_load({ paths = { [1] = "./snippets/" } })
        end,
      },
      {
        "nvim-cmp",
        opts = function(_, opts)
          opts.snippet = {
            expand = function(args)
              require("luasnip").lsp_expand(args.body)
            end,
            table.insert(opts.sources, { name = "luasnip" }),
          }
        end,
      },
    },
  },
}
