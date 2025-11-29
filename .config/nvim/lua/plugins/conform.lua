local prettier_ft = { "prettierd", "prettier" }

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
      rust = { "rustfmt" },
      javascript = prettier_ft,
      javascriptreact = prettier_ft,
      typescript = prettier_ft,
      typescriptreact = prettier_ft,
      go = { "gofumpt", "goimports" },
      sql = { "sqlfluff" },
    },

    formatters = {
      sqlfluff = {
        command = "sqlfluff",
        cwd = require("conform.util").root_file({
          ".git",
        }),
        stdin = true,
      },
      sqlformatter = {
        command = "sql-formatter",
        cwd = require("conform.util").root_file({
          ".sql-formatter.json",
        }),
        stdin = true,
      },
      prettierd = {
        command = "prettierd",
        env = {
          PRETTIERD_LOCAL_PRETTIER_ONLY = "1",
        },
      },
    },
  },
}
