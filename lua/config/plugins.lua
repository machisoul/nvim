local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.keymap.set("n", "<leader>pl", ":Lazy<CR>", { noremap = true})

require("lazy").setup({
	require("config.plugins.flash"),
	require("config.plugins.nvim-tree"),
	require("config.plugins.lspconfig").config,
	require("config.plugins.autocomplete").config,
	require("config.plugins.debugger"),
})

