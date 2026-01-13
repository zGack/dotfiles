return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Recommended for `ask()` and `select()`.
    -- Required for `snacks` provider.
    ---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      -- Your configuration, if any — see `lua/opencode/config.lua`, or "goto definition".
    }

    -- Required for `opts.events.reload`.
    vim.o.autoread = true

    -- Recommended/example keymaps.
    vim.keymap.set({ "n", "x" }, "<leader>oA", function()
      require("opencode").ask("@this: ", { submit = true })
    end, { desc = "Ask opencode" })
    vim.keymap.set({ "n", "x" }, "<leader>oa", function()
      require("opencode").select()
    end, { desc = "Execute opencode action…" })
    vim.keymap.set({ "n", "t" }, "<leader>ot", function()
      require("opencode").toggle()
    end, { desc = "Toggle opencode" })

    vim.keymap.set({ "n", "x" }, "<leader>go", function()
      return require("opencode").operator("@this ")
    end, { expr = true, desc = "Add range to opencode" })
    vim.keymap.set("n", "<leader>gO", function()
      return require("opencode").operator("@this ") .. "_"
    end, { expr = true, desc = "Add line to opencode" })

    vim.keymap.set("n", "<S-C-u>", function()
      require("opencode").command("session.half.page.up")
    end, { desc = "opencode half page up" })
    vim.keymap.set("n", "<S-C-d>", function()
      require("opencode").command("session.half.page.down")
    end, { desc = "opencode half page down" })

    -- You may want these if you stick with the opinionated "<C-a>" and "<C-x>" above — otherwise consider "<leader>o".
    vim.keymap.set("n", "+", "<C-a>", { desc = "Increment", noremap = true })
    vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement", noremap = true })
  end,
  -- keys = {
  --   -- Recommended keymaps
  --   {
  --     "<leader>oA",
  --     function()
  --       require("opencode").ask()
  --     end,
  --     desc = "Ask opencode",
  --   },
  --   {
  --     "<leader>oa",
  --     function()
  --       require("opencode").ask("@cursor: ")
  --     end,
  --     desc = "Ask opencode about this",
  --     mode = "n",
  --   },
  --   {
  --     "<leader>oa",
  --     function()
  --       require("opencode").ask("@selection: ")
  --     end,
  --     desc = "Ask opencode about selection",
  --     mode = "v",
  --   },
  --   {
  --     "<leader>ot",
  --     function()
  --       require("opencode").toggle()
  --     end,
  --     desc = "Toggle embedded opencode",
  --   },
  --   {
  --     "<leader>on",
  --     function()
  --       require("opencode").command("session_new")
  --     end,
  --     desc = "New session",
  --   },
  --   {
  --     "<leader>oy",
  --     function()
  --       require("opencode").command("messages_copy")
  --     end,
  --     desc = "Copy last message",
  --   },
  --   {
  --     "<S-C-u>",
  --     function()
  --       require("opencode").command("messages_half_page_up")
  --     end,
  --     desc = "Scroll messages up",
  --   },
  --   {
  --     "<S-C-d>",
  --     function()
  --       require("opencode").command("messages_half_page_down")
  --     end,
  --     desc = "Scroll messages down",
  --   },
  --   {
  --     "<leader>op",
  --     function()
  --       require("opencode").select_prompt()
  --     end,
  --     desc = "Select prompt",
  --     mode = { "n", "v" },
  --   },
  --   -- Example: keymap for custom prompt
  --   {
  --     "<leader>oe",
  --     function()
  --       require("opencode").prompt("Explain @cursor and its context")
  --     end,
  --     desc = "Explain code near cursor",
  --   },
  -- },
}
