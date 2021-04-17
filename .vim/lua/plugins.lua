
vim.cmd[[packadd packer.nvim]]
return require('packer').startup(function()
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use{
      'hoob3rt/lualine.nvim'
    }
  end)
