return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    return {
      keymap = {
        fzf = {
          ["tab"] = "down",
          ["shift-tab"] = "up",
        },
      },
    }
  end,
}
