-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- vscode
  "Mofiqul/vscode.nvim",
  -- nvim-tree
  {"nvim-tree/nvim-tree.lua", version = "*", lazy = false, dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-tree").setup {}
    end,},
  -- bufferline
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  -- vim-bbye
  {"moll/vim-bbye"},
  -- lualine
  {"nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }},
  "arkav/lualine-lsp-progress",
  -- telescope
  {"nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }},

  -- Comment
  {"numToStr/Comment.nvim"},
  -- 代码部分
  -- treesitter代码高亮
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  -- lsp
  -- lsp config
  {"neovim/nvim-lspconfig"},
  -- lsp server 管理
  {"williamboman/mason.nvim"}
})
