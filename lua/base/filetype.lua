-- [[ Настройка под конкретные типы файлов ]]

-- С/C++ файлы

-- Расставлять отступы в стиле С
vim.cmd [[autocmd filetype c,cpp set cin]]

-- make

-- Не заменять табуляцию пробелами
vim.cmd [[autocmd filetype make set noexpandtab]]
vim.cmd [[autocmd filetype make set nocin]]

-- html

-- Не расставлять отступы в стиле С в html файлах
vim.cmd [[autocmd filetype html set noexpandtab]]
vim.cmd [[autocmd filetype html set nocin]]

-- css

-- Не расставлять отступы в стиле C и 
vim.cmd [[autocmd filetype css set nocin]]
-- Не заменять табуляцию пробелами
vim.cmd [[autocmd filetype css set noexpandtab]]

-- python

-- Не расставлять отступы в стиле С
vim.cmd [[autocmd filetype python set nocin]]
