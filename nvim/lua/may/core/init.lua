require("may.core.keymaps")
require("may.core.options")
vim.api.nvim_create_user_command("AllMarks", function()
  vim.cmd("redir => marksOutput | silent marks | redir END | new | put=marksOutput")
end, {})

