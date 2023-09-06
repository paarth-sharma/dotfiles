local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  --[[use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }]]
  --use 'ellisonleao/gruvbox.nvim'        -- gruvbox theme
  use 'folke/tokyonight.nvim'     -- tokyonight theme
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
            '',
            ' ⠄⠄⠄⠄⣠⣴⣿⣿⣿⣷⣦⡠⣴⣶⣶⣶⣦⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄ ',
            ' ⠄⠄⠄⣴⣿⣿⣫⣭⣭⣭⣭⣥⢹⣟⣛⣛⣛⣃⣀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄ ',
            ' ⠄⣠⢸⣿⣿⣿⣿⢯⡓⢻⠿⠿⠷⡜⣯⠭⢽⠿⠯⠽⣀⠄⠄⠄⠄⠄⠄⠄⠄⠄ ',
            ' ⣼⣿⣾⣿⣿⣿⣥⣝⠂⠐⠈⢸⠿⢆⠱⠯⠄⠈⠸⣛⡒⠄⠄⠄⠄⠄⠄⠄⠄⠄ ',
            ' ⣿⣿⣿⣿⣿⣿⣿⣶⣶⣭⡭⢟⣲⣶⡿⠿⠿⠿⠿⠋⠄⠄⣴⠶⠶⠶⠶⠶⢶⡀ ',
            ' ⣿⣿⣿⣿⣿⢟⣛⠿⢿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣷⡄⠄⢰⠇⠄⠄⠄⠄⠄⠈⣧ ',
            ' ⣿⣿⣿⣿⣷⡹⣭⣛⠳⠶⠬⠭⢭⣝⣛⣛⣛⣫⣭⡥⠄⠸⡄⣶⣶⣾⣿⣿⢇⡟ ',
            ' ⠿⣿⣿⣿⣿⣿⣦⣭⣛⣛⡛⠳⠶⠶⠶⣶⣶⣶⠶⠄⠄⠄⠙⠮⣽⣛⣫⡵⠊⠁ ',
            ' ⣍⡲⠮⣍⣙⣛⣛⡻⠿⠿⠿⠿⠿⠿⠿⠖⠂⠄⠄⠄⠄⠄⠄⠄⠄⣸⠄⠄⠄⠄ ',
            ' ⣿⣿⣿⣶⣦⣬⣭⣭⣭⣝⣭⣭⣭⣴⣷⣦⡀⠄⠄⠄⠄⠄⠄⠠⠤⠿⠦⠤⠄⠄ ',
            '',
            ' Hello, Elder Reaver ',
            '',
          }, --your header
          center = {
            {
              icon = ' ',
              icon_hl = 'Title',
              desc = 'Find File                 ',
              desc_hl = 'String',
              key = 'f',
              key_hl = 'Number',
              action = 'Telescope find_files'
            },
            {
              icon = '󱋡 ',
              icon_hl = 'Title',
              desc = 'Recently Opened           ',
              desc_hl = 'String',
              key = 'r',
              key_hl = 'Number',
              action = 'Telescope oldfiles'
            },
            {
              icon = '󰧺 ',
              icon_hl = 'Title',
              desc = 'Nvim Dotfiles             ',
              desc_hl = 'String',
              key = 'd',
              key_hl = 'Number',
              action = 'edit C:\\Users\\PaarthSharma\\AppData\\Local\\nvim\\lua\\paarth\\plugins.lua'
            },
          },
          footer = {
            '',
            ' 🚀 Sharp tools make good work.',
          }, --your footer
        }
      }
    end,
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
  use 'nvim-lua/plenary.nvim'           -- Common utilities
  use 'onsails/lspkind-nvim'            -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'              -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'            -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                -- Completion
  use 'neovim/nvim-lspconfig'           -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use {                                 -- File explorer, nvim-tree
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  -- nvim-treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'
  -- use 'github/copilot.vim'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
end)
