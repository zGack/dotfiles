return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ':TSUpdate',
        opts_extend={"ensure_installed"},
        opts = {
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
            ensure_installed = {
                "apex",
                "astro",
                "bash",
                "c",
                "cmake",
                "cpp",
                "css",
                "diff",
                "dockerfile",
                "gitignore",
                "go",
                "gomod",
                "gosum",
                "groovy",
                "gowork",
                "html",
                "http",
                "java",
                "javascript",
                "jsdoc",
                "json",
                "json5",
                "jsonc",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "prisma",
                "python",
                "query",
                "regex",
                "rust",
                "sflog",
                "soql",
                "sosl",
                "sql",
                "templ",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
                "hcl",
            },
            auto_install = true,
            config = function(_, opts)
                require("nvim-treesitter.configs").setup(opts)

                -- MDX
                vim.filetype.add({
                    extension = {
                        mdx = "mdx",
                    },
                })
                vim.treesitter.language.register("markdown", "mdx")
            end,
        },
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        enabled = false,
    },
}
