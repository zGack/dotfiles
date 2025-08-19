return {
  {
    "folke/which-key.nvim",
    opts = {
      preset = "modern",
      spec = {
        { "<leader>a", group = "salesforce", icon = { icon = "", color = "blue" }, mode = { "n", "v" } },
        { "<leader>at", group = "tests execution", icon = { icon = "", color = "red" } },
        { "<leader>ao", group = "org commands", icon = { icon = "", color = "blue" } },
      },
    },
  },
}
