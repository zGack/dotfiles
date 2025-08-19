return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' },
    opts = {
        render_modes = { 'n', 'c', 't' },
        code = {
            sign = true,
        },
        heading = {
            enabled = true,
            sign = true,
        },
        checkbox = {
            enabled = true,
        },
    },
}
