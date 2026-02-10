return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#050D16",
                bg_dark = "#050D16",
                bg_highlight = "#587ea8",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#fafbfc",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#C2D1D8",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#587ea8",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#9a958e",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#c6c3be",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#a8a49e",
                -- green: Comments, strings, success states, git additions
                green = "#78A5C5",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#88ADC7",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#8babcb",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#8db6d8",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#d0e2f1",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
