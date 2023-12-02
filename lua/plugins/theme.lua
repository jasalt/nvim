return {
  "folke/tokyonight.nvim",
  opts = {
    style = "day",
    transparent = true,
    day_brightness = 0.15,

    on_colors = function(colors)
      -- Day variant is inverting colors when set here
      colors.bg_sidebar = "#000000"
      colors.bg_highlight = "#0d0d0d"
      colors.fg_gutter = "#232324"
      -- colors.fg_gutter = "#151515" -- makes cursor hidden over whitespace
      -- colors.fg_gutter = "#767676" -- makes cursor word matches too dark
      colors.comment = "#b5bbd7"
      colors.bg_float = "#08090c" -- lighter telescope background color
      colors.bg_visual = "#0f1528" -- lighter visual selection
    end,
  },
}
