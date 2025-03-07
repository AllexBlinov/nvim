local wk = require("which-key")
wk.add({
-- Group Find
  { "<leader>f", group = "Find"},
  { "<leader>ff", desc = "Find File"}, 
  { "<leader>fb", desc = "Find Buffer"}, 
  { "<leader>fh", desc = "Find Help"}, 
  { "<leader>fw", desc = "Find Text"}, 
-- Group Git
  { "<leader>g", group = "Git"},
  { "<leader>gb", desc = "Branches"},
  { "<leader>gc", desc = "Commits"},
  { "<leader>gs", desc = "Status"},
-- Group Terninal
  { "<leader>t", group = "Terminal"},
  { "<leader>tf", desc = "Float Terminal"},
  { "<leader>th", desc = "Horizontal Terminal"},
-- Group DAP
  { "<leader>d", group = "Debug Adapter Protocol"},
  { "<leader>db", desc = "Toggle Breakpoint"},
  { "<leader>dr", desc = "Continue"},
-- Group LSP
  { "<leader>l", group = "LSP"},
  { "<leader>ld", desc = "Diagnostic"},
  { "<leader>lD", desc = "Hover Diagnostic"},
  { "<leader>lf", desc = "Format"},
  { "<leader>lr", desc = "Rename"},
  { "<leader>la", desc = "Action"},
  { "<leader>ls", desc = "Symbol"},
-- Other
  { "<leader>o", desc = "Git Status"},
  { "<leader>x", desc = "Close Buffer"},
  { "<leader>e", desc = "File manager"},
  { "<leader>h", desc = "No highlight"},
  { "<leader>c", desc = "Comment selected"},
  { "<leader>/", desc = "Comment line"},
  {
    mode = { "n", "v" }, -- NORMAL and VISUAL mode
    { "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
    { "<leader>w", "<cmd>w<cr>", desc = "Write" },
  }
})
