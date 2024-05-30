-- Description:
-- cmd is a plugin that's gives some hints about the command you're typing. It's a bit like IntelliSense for the command line.
-- copilot is a source for nvim-cmp that provides completions for the copilot plugin.
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
   		"github/copilot.vim", -- source for copilot
  }
}
