local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({
  -- nvim-tree
  {
    "nvim-tree/nvim-tree.lua", 
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },   
  },
  -- -- bufferline
  -- {"akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons", "moll/vim-bbye" }},
  -- -- lualine
  -- {"nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }},
  -- "arkav/lualine-lsp-progress",
  -- -- telescope
  -- {"nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }},
  -- -- telescope extensions
  -- "LinArcX/telescope-env.nvim",
  -- "nvim-telescope/telescope-ui-select.nvim",
  -- "ahmedkhalf/project.nvim",
  -- -- dashboard-nvim
  -- "glepnir/dashboard-nvim",
  -- -- Comment
  -- "numToStr/Comment.nvim",
  -- -- vscode
  -- "Mofiqul/vscode.nvim",
})