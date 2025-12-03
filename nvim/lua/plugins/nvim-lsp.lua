return {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    opts = {
        servers = {
            templ = {
                filetypes = { "templ" },
                settings = {
                    templ = {
                        enable_snippets = true,
                    },
                },
            },
            apex_ls = {
                apex_jar_path = vim.fn.expand("$HOME/apex-jorje-lsp.jar"),
                apex_enable_semantic_errors = false,
                apex_enable_completion_statistics = false,
                filetypes = { "cls", "trigger", "apex" },
            },
        },
    },
}
