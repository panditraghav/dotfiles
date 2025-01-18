return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
      'echasnovski/mini.pick', -- optional
    },
    config = true,
    opts = {
      mappings = {
        commit_editor = {
          ['q'] = 'Close',
          ['<c-c><c-c>'] = 'Submit',
          ['<c-c><c-k>'] = 'Abort',
          ['<c-p>'] = 'PrevMessage',
          ['<c-n>'] = 'NextMessage',
          ['<c-r>'] = 'ResetMessage',
        },
      },
    },
    keys = {
      { '<leader>g', '<cmd>Neogit<cr>', desc = 'Neogit' },
    },
  },
}
