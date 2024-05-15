return {
    {
        "folke/tokyonight.nvim",
        opts = {
            style = "moon",
            priority = 1000,
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
        },
    },
}
