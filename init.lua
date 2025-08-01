-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")

vim.cmd([[colorscheme catppuccin-mocha]])
vim.cmd([[colorscheme tokyonight-night]])

vim.cmd([[highlight WinSeparator guifg=ErrorMsg.guifg]])
