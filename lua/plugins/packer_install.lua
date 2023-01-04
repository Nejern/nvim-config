vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'sainnhe/gruvbox-material'

  -- Autopairs
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    requires = {'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim', 'j-hui/fidget.nvim'},
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup()
      require('fidget').setup()
      require('plugins.lspconfig')
    end
    }

  -- Lspkind
  use {
    'onsails/lspkind-nvim',
    config = function()
      require('plugins/lspkind')
    end
  }

  -- Statusline
  use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('plugins/lualine')
		end
	}

  -- Copilot
  use 'github/copilot.vim'
end)
