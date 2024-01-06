require("gopher").setup()
vim.cmd [[silent! GoInstallDeps]]
vim.keymap.set("n", "<leader>gts", ":GoTagAdd json<CR>", { noremap = true })
