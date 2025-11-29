return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap",
    "mfussenegger/nvim-dap-python",
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  opts = {
    name = ".venv",
  },

  lazy = false,
  keys = {
    { "<leader>v", "<cmd>VenvSelect<cr>" },
  },
}
