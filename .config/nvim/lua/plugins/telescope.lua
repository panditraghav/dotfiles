return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_strategy = "flex",
      layout_config = {
        horizontal = {
          width = 0.98,
          height = 0.95,
          preview_cutoff = 120,
          preview_width = 0.6,
        },
      },
    },
  },
}
