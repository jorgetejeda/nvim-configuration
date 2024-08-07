vim.g.mapleader = " "

local keymap = vim.keymap -- for concisenses

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & heightcolocolo
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<CR>", "o<Esc>k", { desc = "Insert a newline pressing <ENTER> without entering insert mode" })
keymap.set("n", "<S-CR>", "O<Esc>j", { desc = "Insert a newline pressing <SHIFT+ENTER> without entering insert mode" })

-- terminal management
keymap.set("t", "<leader><ESC>", "<C-\\><C-n>", { desc = "Close terminal mode" })

-- jump into previous file :e#
keymap.set("n", "<leader>`", "<leader><CR>`", { desc = "Toggle between current file and previous file" })

-- Fold code
-- set command
-- :set foldmehtod=indent
keymap.set("n", "za", "za", { desc = "Toggle between closing and opening the fold under the cursos" })
-- zc - Close (fold) the current fold under the cursor.
-- zo - Open (unfold) the current fold under the cursor.
-- za - Toggle between closing and opening the fold under the cursor.
-- zR - Open all folds in the current buffer.
-- zM - Close all folds in the current buffer.

keymap.set("", "<leader>f", function()
  require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Formata selected code" })
