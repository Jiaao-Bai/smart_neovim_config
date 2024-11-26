local status, treesitter = pcall(require, "lspconfig")
if not status then
  vim.notify("没有找到lspconfig")
  return
end

require'lspconfig'.pyright.setup{}
