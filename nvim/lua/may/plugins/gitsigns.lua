-- install lazygit using brew
-- brew install lazygit
return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add          = { text = "│" },
      change       = { text = "│" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
      untracked    = { text = "┆" },
    },
    signcolumn = true,
    numhl = false,
    linehl = false,
    word_diff = false,
    watch_gitdir = {
      interval = 1000,
      follow_files = true,
    },
    attach_to_untracked = true,
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'eol',
      delay = 500,
      ignore_whitespace = false,
    },
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
    preview_config = {
      border = "rounded",
      style = "minimal",
      relative = "cursor",
      row = 0,
      col = 1,
    },
    yadm = {
      enable = false,
    },
  },
  config = function(_, opts)
    local gitsigns = require("gitsigns")
    gitsigns.setup(opts)

    local map = vim.keymap.set
    local desc = function(d) return { desc = d } end

    -- 🧭 Navegación entre hunks
    -- map("n", "]c", function()
    --   if vim.wo.diff then return "]c" end
    --   vim.schedule(gitsigns.next_hunk)
    --   return "<Ignore>"
    -- end, { expr = true, desc = "Next Git hunk" })
    --
    -- map("n", "[c", function()
    --   if vim.wo.diff then return "[c" end
    --   vim.schedule(gitsigns.prev_hunk)
    --   return "<Ignore>"
    -- end, { expr = true, desc = "Previous Git hunk" })
    --
    -- 🛠️ Acciones rápidas
    map("n", "<leader>gb", function()
      gitsigns.blame_line({ full = true })
    end, desc("Blame línea actual"))

    -- map("n", "<leader>gs", gitsigns.stage_hunk, desc("Stage hunk"))
    -- map("n", "<leader>gr", gitsigns.reset_hunk, desc("Reset hunk"))
    -- map("n", "<leader>gS", gitsigns.stage_buffer, desc("Stage buffer"))
    -- map("n", "<leader>gu", gitsigns.undo_stage_hunk, desc("Undo stage"))
    -- map("n", "<leader>gR", gitsigns.reset_buffer, desc("Reset buffer"))
    -- map("n", "<leader>gp", gitsigns.preview_hunk, desc("Preview hunk"))
    map("n", "<leader>gD", gitsigns.diffthis, desc("Diff con HEAD"))

    -- 🖍️ Visual mode: stage/reset solo en selección
    -- map("v", "<leader>gs", function()
    --   gitsigns.stage_hunk { vim.fn.line("."), vim.fn.line("v") }
    -- end, desc("Stage hunk (visual)"))
    
    -- map("v", "<leader>gr", function()
    --   gitsigns.reset_hunk { vim.fn.line("."), vim.fn.line("v") }
    -- end, desc("Reset hunk (visual)"))
  end,
}

