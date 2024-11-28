return {
  -- {
  --   "folke/noice.nvim",
  --   enabled = false,
  -- },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
    },
  },
}
