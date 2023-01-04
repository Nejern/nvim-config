-- [ Variables ] --
local opt = vim.opt

-- [ Options ] --
opt.updatetime = 250 				-- Update time
opt.clipboard = "unnamedplus" 			-- System clipboard
vim.cmd("au BufEnter * set fo-=c fo-=r fo-=o") 	-- No auto comment on new lines
