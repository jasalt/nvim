# https://github.com/nvim-treesitter/nvim-treesitter-context
return {
  "nvim-treesitter/nvim-treesitter-context",
  event = "BufReadPre",
  enabled = true,
  opts = {
    mode = "cursor",
    multiline_threshold = 1
  },
}
