-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local set_keymap = vim.api.nvim_set_keymap

-- Split windows
keymap.set("n", "ss", ":vsplit<Return>", opts)
keymap.set("n", "sv", ":split<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Salesforce keymaps
set_keymap(
  "n",
  "<leader>as",
  "<cmd>lua require('sf').set_target_org()<cr>",
  { silent = true, noremap = true, desc = "Set target org" }
)

set_keymap(
  "n",
  "<leader>af",
  "<cmd>lua require('sf').fetch_org_list()<cr>",
  { silent = true, noremap = true, desc = "Fetch/refresh orgs info" }
)

set_keymap(
  "n",
  "<leader>ap",
  "<cmd>lua require('sf').save_and_push()<cr>",
  { silent = true, noremap = true, desc = "Save and push current file" }
)

set_keymap(
  "n",
  "<leader>aq",
  "<cmd>lua require('sf').toggle_term()<cr>",
  { silent = true, noremap = true, desc = "Toogle term" }
)

set_keymap(
  "n",
  "<leader>ar",
  "<cmd>lua require('sf').retrieve()<cr>",
  { silent = true, noremap = true, desc = "Retrieve current file" }
)

set_keymap(
  "n",
  "<leader>att",
  "<cmd>lua require('sf').run_current_test()<cr>",
  { silent = true, noremap = true, desc = "Run under cursor test" }
)

set_keymap(
  "n",
  "<leader>atT",
  "<cmd>lua require('sf').run_current_test_with_coverage()<cr>",
  { silent = true, noremap = true, desc = "Run under cursor test with coverage" }
)

set_keymap(
  "n",
  "<leader>ata",
  "<cmd>lua require('sf').run_all_tests_in_this_file()<cr>",
  { silent = true, noremap = true, desc = "Run all apex test in current file" }
)

set_keymap(
  "n",
  "<leader>atA",
  "<cmd>lua require('sf').run_all_tests_in_this_file_with_coverage()<cr>",
  { silent = true, noremap = true, desc = "Run all apex test in current file with coverage" }
)

set_keymap(
  "n",
  "<leader>atr",
  "<cmd>lua require('sf').repeat_last_tests()<cr>",
  { silent = true, noremap = true, desc = "Re run last test" }
)

set_keymap(
  "n",
  "<leader>ao",
  "<cmd>lua require('sf').org_open()<cr>",
  { silent = true, noremap = true, desc = "Open target org" }
)

set_keymap(
  "n",
  "<leader>atc",
  "<cmd>lua require('sf').toggle_sign()<cr>",
  { silent = true, noremap = true, desc = "Show sign icons to indicates uncovered lines" }
)

set_keymap(
  "n",
  "<leader>ac",
  "<cmd>lua require('sf').cancel()<cr>",
  { silent = true, noremap = true, desc = "Cancel the running command" }
)
