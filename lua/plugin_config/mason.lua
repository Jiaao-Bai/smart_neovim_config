local status, treesitter = pcall(require, "mason")
if not status then
  vim.notify("没有找到 mason")
  return
end

require("mason").setup()