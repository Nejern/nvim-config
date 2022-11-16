--[[ Переменные ]]--

local opt = vim.opt
local g = vim.g


--[[ Цветовая схема ]]--

opt.termguicolors = true
opt.background = 'dark'

g.gruvbox_material_background = 'hard'
g.gruvbox_material_foreground = 'hard'
g.gruvbox_material_better_performance = 1

vim.cmd [[colorscheme gruvbox-material]]
