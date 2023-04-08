local setup, nvimtree = pcall(require, 'nvim-tree')
if not setup then
  return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

nvimtree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 27,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
