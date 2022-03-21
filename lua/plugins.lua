return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {
		'easymotion/vim-easymotion',
		cond = function() return vim.g.vscode ~= 1 end
	}
	use {
		'asvetliakov/vim-easymotion',
		as = "vsc-easymotion",
		cond = function() return vim.g.vscode == 1 end
	}
	use 'zzhirong/vim-easymotion-zh'
	use 'lervag/vimtex'
	use {
		'neovim/nvim-lspconfig',
		'williamboman/nvim-lsp-installer',
	}
end)
