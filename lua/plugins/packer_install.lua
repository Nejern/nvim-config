-- Добавляем Packer как пакет в Neovim
vim.cmd [[packadd packer.nvim]]

-- Используем данный коллбэк как список для плагинов
return require('packer').startup(function()

	-- Автообновление Packer
	use 'wbthomason/packer.nvim'

	-- Темы
	use 'sainnhe/gruvbox-material'
	use 'arcticicestudio/nord-vim'
	use 'rebelot/kanagawa.nvim'

	-- Авто-закрытие кавычек итд
	use {
		"windwp/nvim-autopairs",
    config = function()
			require("nvim-autopairs").setup {}
		end
	}

	-- LSP сервер
	use {
		'neovim/nvim-lspconfig',
		requires = {'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim', 'j-hui/fidget.nvim'},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup()
			require("fidget").setup()
			require('plugins/lspconfig')
		end
	}

	-- Меню для обозрения проблем LSP
	use {
		'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require('trouble').setup {}
		end,
	}

	-- Иконки для автодополнения
	use {
		'onsails/lspkind-nvim',
		config = function()
			require('plugins/lspkind')
		end
	}

	-- Статуслайн
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('plugins/lualine')
		end
	}

	-- Автодополнение
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-nvim-lua'
		},
		config = function()
			require('plugins/cmp')
		end
	}
end)
