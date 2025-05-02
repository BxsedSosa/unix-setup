require("live-server-nvim").setup {
  custom = {
    "--port=8080",
    "--no-css-inject",
  },
  serverPath = vim.fn.stdpath("data") .. "/live-server/",
  open = "folder",
}
