return {
  "xixiaofinland/sf.nvim",

  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("sf").setup({
      fetch_org_list_at_nvim_start = true,
    }) -- initialize the plugin
  end,
}
