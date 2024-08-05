-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
  noremap = true, -- 键位映射是非递归的
  silent = true, -- 关闭映射触发时多余的信息
}

-- 本地变量
local map = vim.api.nvim_set_keymap

map("n", "<leader>w", ":w<CR>", opt)
map("n", "<leader>wq", ":wqa!<CR>", opt)

-- 上下滚动浏览
map("n", "<C-j>", "5j", opt)
map("n", "<C-k>", "5k", opt)
map("v", "<C-j>", "5j", opt)
map("v", "<C-k>", "5k", opt)
map("n", "<C-Down>", "5j", opt)
map("n", "<C-Up>", "5k", opt)
map("v", "<C-Down>", "5j", opt)
map("v", "<C-Up>", "5k", opt)

-- 插件快捷键
local pluginKeys = {}

-- nvim-tree
map("n", "<C-m>", ":NvimTreeToggle<CR>", opt)
map("n", "<leader>m", ":NvimTreeToggle<CR>", opt)

return pluginKeys
