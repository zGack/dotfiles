return {
  "nvim-lualine/lualine.nvim",

  config = function()
    local function sf_status()
      local target_org = require("sf").get_target_org()
      local covered_percent = require("sf").covered_percent()
      return target_org .. "(" .. covered_percent .. ")"
    end

    require("lualine").setup({
      options = {
        theme = "everforest",
      },
      sections = {
        lualine_c = { "filename", sf_status },
      },
    })
  end,
}
