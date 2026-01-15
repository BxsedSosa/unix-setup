require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line"})
map("n", "<leader>dr", "<cmd> DapContinue <CR>", {desc = "Start or continue the debugger"})
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window left"})
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window right"})
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window down"})
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window up"})
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
