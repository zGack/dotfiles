return {
    "saghen/blink.cmp",
    optional = true,
    opts = {
        keymap = {
            ["<Tab>"] = { "select_next", "fallback" },
            ["<S-Tab>"] = { "select_prev", "fallback" },
        },
    },
}
