vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentations
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 space for indent witdh
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termiguicolors for tokionight colorscheme to work, peding to validate
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so taht text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on idnent, end of line or insert mode start position

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- ignore directoies
opt.wildignore:append({ "*/node_modules/*" })

vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    if vim.bo.buftype == "" then
      vim.opt_local.foldmethod = "indent"
      vim.opt_local.foldlevel = 99      -- 👈 Deja todo desplegado
      vim.opt_local.foldlevelstart = 99 -- 👈 Asegura que inicie desplegado
      vim.opt_local.foldenable = true   -- 👈 Habilita el sistema de folds, pero sin colapsar
    end
  end
})
