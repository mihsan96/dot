return {
  {
    "paopaol/telescope-git-diffs.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
    config = function()
      require("telescope").setup({
        extensions = {
          git_diffs = {
            enable_preview_diff = true,
          },
        },
      })
      require("telescope").load_extension("git_diffs")
    end,
  },
}
