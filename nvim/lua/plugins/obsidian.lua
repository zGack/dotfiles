return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "main",
                path = "~/Documents/vaults/personal",
                overrides = {
                    notes_subdir = "6 - Atomic Notes",
                }
            },
            -- {
            --     name = "work",
            --     path = "~/vaults/work",
            -- },
        },
        new_notes_location = "notes_subdir",
    },
}
