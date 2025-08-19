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

-- Tmux navigation
keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true })
keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true })
keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true })
keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true })
keymap.set("n", "<C-\\>", "<Cmd>NvimTmuxNavigateLastActive<CR>", { silent = true })
keymap.set("n", "<C-Space>", "<Cmd>NvimTmuxNavigateNavigateNext<CR>", { silent = true })

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
  "<leader>aP",
  "<cmd>lua require('sf').save_and_push('--ignore-conflicts')<cr>",
  { silent = true, noremap = true, desc = "Save and push current file ignoring conflicts" }
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
  "<leader>ag",
  "<cmd>lua require('sf').run('sf apex generate class -n '.. vim.fn.input 'Class name: '..' -d '.. vim.fn.expand '%:.:h')<cr>",
  { silent = true, noremap = true, desc = "Generate an Apex class in current directory" }
)

set_keymap(
  "n",
  "<leader>aG",
  -- "<cmd>echo(expand('%:.:h'))<cr>",
  --sf apex generate class --name MyClass --output-dir force-app/main/default/classes
  "<cmd>lua require('sf').run('sf apex generate class -n '.. vim.fn.expand '%:t:r' ..'Test -d '.. vim.fn.expand '%:.:h.h' .. ' -t ApexUnitTest')<cr>",
  -- "<cmd>echo(expand('%:.:h:h'))<cr>",
  { silent = true, noremap = true, desc = "Generate an Apex Test class in current folder" }
)

-- set_keymap(
--   "n",
--   "<leader>aC",
--   lua_expr(function()
--     return ''
--   end),
--   { silent = true, noremap = true, desc = "Retrieve current file" }
-- )

set_keymap(
  "n",
  "<leader>aR",
  "<cmd>lua require('sf').retrieve_delta('-d '.. vim.fn.expand '%:.' ..' --ignore-conflicts')<cr>",
  { silent = true, noremap = true, desc = "Retrieve ignoring conflicts in current file" }
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
  "<leader>atc",
  "<cmd>lua require('sf').toggle_sign()<cr>",
  { silent = true, noremap = true, desc = "Show sign icons to indicates uncovered lines" }
)

set_keymap(
  "n",
  "<leader>ax",
  "<cmd>lua require('sf').cancel()<cr>",
  { silent = true, noremap = true, desc = "Cancel the running command" }
)

set_keymap(
  "n",
  "<leader>atl",
  "<cmd>lua require('sf').run_jest_file()<cr>",
  { silent = true, noremap = true, desc = "Run all jest tests in current file" }
)

set_keymap(
  "v",
  "<leader>aq",
  "<cmd>lua require('sf').run_highlighted_soql()<cr>",
  { silent = true, noremap = true, desc = "Run selected SOQL in the term" }
)

set_keymap(
  "n",
  "<leader>aoo",
  "<cmd>lua require('sf').org_open()<cr>",
  { silent = true, noremap = true, desc = "Open target org" }
)

set_keymap(
  "n",
  "<leader>aoc",
  "<cmd>lua require('sf').run('sf org create scratch -f config/project-scratch-def.json -y 30 -a '.. vim.fn.input 'Org alias: ')<cr>",
  { silent = true, noremap = true, desc = "Create org scratch" }
)

set_keymap(
  "n",
  "<leader>aog",
  "<cmd>lua require('sf').run('sf org generate password')<cr>",
  { silent = true, noremap = true, desc = "Generate password for current scratch" }
)
set_keymap(
  "n",
  "<leader>aot",
  "<cmd>lua require('sf').run('sf project delete tracking -o '.. require('sf').get_target_org() .. ' -p'Show ) <cr>",
  { silent = true, noremap = true, desc = "Delete tracking" }
)

set_keymap(
  "n",
  "<leader>aod",
  "<cmd>lua require('sf').run('sf org display')<cr>",
  { silent = true, noremap = true, desc = "Display org details" }
)

set_keymap(
  "n",
  "<leader>ad",
  "<cmd>lua require('sf').run('sf project deploy start')<cr>",
  { silent = true, noremap = true, desc = "Deploy files to scratch" }
)

set_keymap(
  "n",
  "<leader>aD",
  "<cmd>lua require('sf').run('sf project deploy start --ignore-conflicts')<cr>",
  { silent = true, noremap = true, desc = "Deploy files to scratch ignoring conflicts" }
)

set_keymap(
  "n",
  "<leader>aop",
  "<cmd>lua require('sf').run('java -jar target/pmd-rules-1.0.0-jar-with-dependencies.jar -R veevart_rule_ref.xml -d '.. vim.fn.expand '%:.')<cr>",
  { silent = true, noremap = true, desc = "Check PMD in current file" }
)

set_keymap(
  "n",
  "<leader>aoP",
  "<cmd>lua require('sf').run('prettier '.. vim.fn.expand '%:.' ..' --write')<cr>",
  { silent = true, noremap = true, desc = "Check prettier in current file" }
)

set_keymap(
  "n",
  "<leader>aoa",
  "<cmd>lua require('sf').run('sf org login web -r https://test.salesforce.com/ -s -a '.. vim.fn.input 'Org alias: ')<cr>",
  { silent = true, noremap = true, desc = "Authorize an existing org and set it as the default org" }
)

set_keymap(
  "n",
  "<leader>aoA",
  "<cmd>lua require('sf').run('sf org assign permset -n Veevart -n auctifera')<cr>",
  { silent = true, noremap = true, desc = "Assign Auctifera permissions sets" }
)

set_keymap(
  "n",
  "<leader>aoN",
  "<cmd>lua require('sf').run('sudo sf org assign permset -n Veevart -n Veevart_Non_For_Profit')<cr>",
  { silent = true, noremap = true, desc = "Assign Veevart Non For Profit permissions sets" }
)
