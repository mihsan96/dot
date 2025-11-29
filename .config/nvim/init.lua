-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").tailwindcss.setup({
  settings = {
    tailwindCSS = {
      experimental = {
        classRegex = {
          "cva\\(([^)]*)\\)", -- class-variance-authority
          "tv\\(([^)]*)\\)", -- tailwind-variants
          "twMerge\\(([^)]*)\\)", -- twMerge
          "clsx\\(([^)]*)\\)", -- clsx
          "classnames\\(([^)]*)\\)", -- classnames
        },
      },
    },
  },
})
