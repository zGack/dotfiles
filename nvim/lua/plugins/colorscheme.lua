return {
    {
        -- "projekt0n/github-nvim-theme",
        -- "catppuccin/nvim",
        -- "folke/tokyonight.nvim",
        -- "olimorris/onedarkpro.nvim",
        -- "ellisonleao/gruvbox.nvim",
        -- "sainnhe/gruvbox-material",
        -- "EdenEast/nightfox.nvim",
        "sainnhe/everforest",
        -- "aktersnurra/no-clown-fiesta.nvim",
        -- "projekt0n/github-nvim-theme",
        lazy = false,
        priority = 1000,
        -- config = true,
        -- opts = {
        --   gruvbox_material_background = "hard",
        -- },
        -- config = function() -- gruvbox
        --   vim.g.gruvbox_material_enable_italic = true
        --   vim.g.gruvbox_material_background = "hard"
        --   vim.cmd.colorscheme("gruvbox-material")
        -- end,
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "everforest",
            -- colorscheme = "nordfox",
            -- colorscheme = "no-clown-fiesta",
            -- colorscheme = "github_dark_dimmed",
            -- colorscheme = "catppuccin-macchiato",
            -- colorscheme = "tokyonight-storm",
            -- colorscheme = "onedark_vivid",
            -- colorscheme = "gruvbox-material",
            -- colorscheme = "github_dark",
        },
    },

    {
       "sainnhe/everforest",
        config = function()
            vim.g.everforest_background = "hard"
            vim.g.everforest_better_performance = 1
            vim.g.everforest_enable_italic = 1
            vim.cmd.colorscheme("everforest")
        end,
    },
}
