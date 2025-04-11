return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { "<leader>gg", "<cmd>LazyGit<cr>", desc = "Open lazy git" },
    { "<leader>gG", "<cmd>LazyGitCurrentFile<cr>", desc = "Open lazy git for current file" },
    { "<leader>gf", "<cmd>LazyGitFilter<cr>", desc = "Open lazy git filter" },
    { "<leader>gF", "<cmd>LazyGitFilterCurrentFile<cr>", desc = "Open lazy git filter for current file" },
    { "<leader>gc", "<cmd>LazyGitConfig<cr>", desc = "Open lazy git config" },
  },
}
