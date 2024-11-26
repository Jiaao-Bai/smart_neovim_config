local status, treesitter = pcall(require, "mason-lspconfig")
if not status then
  vim.notify("没有找到 mason-lspconfig")
  return
end

require("mason-lspconfig").setup()
