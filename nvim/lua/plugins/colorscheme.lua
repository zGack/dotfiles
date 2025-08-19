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
        },
    },

    -- {
    --   "mawkler/modicator.nvim",
    --   dependencies = "sainnhe/gruvbox-material", -- Add your colorscheme plugin here
    --   init = function()
    --     -- These are required for Modicator to work
    --     vim.o.cursorline = true
    --     vim.o.number = true
    --     vim.o.termguicolors = true
    --   end,
    --   opts = {
    --     -- Warn if any required option above is missing. May emit false positives
    --     -- if some other plugin modifies them, which in that case you can just
    --     -- ignore. Feel free to remove this line after you've gotten Modicator to
    --     -- work properly.
    --     show_warnings = true,
    --   },
    -- },
}
