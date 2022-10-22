--[[ Переменные ]]--

local map = vim.api.nvim_set_keymap


--[[ Функции ]]--

-- Горячие клавиши в normal mode
function nm(key, command)
	map('n', key, command, {noremap = true})
end

-- Горячие клавиши в insert mode
function im(key, command)
	map('i', key, command, {noremap = true})
end

-- Горячие клавиши в visual mode
function vm(key, command)
	map('v', key, command, {noremap = true})
end

-- Горячие клавиши в terminal mode
function tm(key, command)
	map('t', key, command, {noremap = true})
end
