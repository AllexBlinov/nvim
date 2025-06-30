local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Навигация по файловой системе
	{ "nvim-neo-tree/neo-tree.nvim",
           branch = "v2.x",
           dependencies = {
               "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
               "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
        } },
    -- Подсветка синтаксиса
	{ 'nvim-treesitter/nvim-treesitter' },
    -- lsp сервер 
	{ 'neovim/nvim-lspconfig' },
    -- Тема 
	{ 'catppuccin/nvim', name = "catppuccin", priority = 1000 },
    -- Автозаполнение
	{ 'hrsh7th/cmp-nvim-lsp' }, { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' }, { 'hrsh7th/cmp-cmdline' }, { 'hrsh7th/nvim-cmp' },    
    -- mason плагин для установки других плагинов 
	{ 'williamboman/mason.nvim',
        opts = {
            ensure_installed = { 
                "clangd",
                "clang-format",
                "codelldb"
            }
        }
    },
    -- telescope - поисковик
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                          , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- null-ls диагностика, форматирование и т.п.
    -- Мертв... none-ls на замену
	-- { 
	--         'jose-elias-alvarez/null-ls.nvim',
	--         event = "VeryLazy",
	--     },
{
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  dependencies = { "mason.nvim", "nvimtools/none-ls-extras.nvim", },
},
    -- autopairs ставит парные ковычки, скобки и тп
    {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
      -- use opts = {} for passing setup options
      -- this is equivalent to setup({}) function
    },
    -- autopairs ставит парные ковычки, скобки и тп
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    -- dashboard начальная заставка
    {
     'nvimdev/dashboard-nvim',
     event = 'VimEnter',
     dependencies = { {'nvim-tree/nvim-web-devicons'}}
    },
    -- comments - <leader> + {c|cl} для комментирования
    { 'terrortylor/nvim-comment'},
    -- gitsigns Отображает изменения строк
    {'lewis6991/gitsigns.nvim'},
    -- lualine Отображает нижний интерфейс
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
        }
    },
    -- hop Навигация по тексту f + {a..z}
    { 'phaazon/hop.nvim', branch = 'v2'},
    -- symbols-outline Древовидное представление переменных
    -- Escape	Close outline
    -- Enter	Go to symbol location in code
    -- o	Go to symbol location in code without losing focus
    -- Ctrl+Space	Hover current symbol
    -- K	Toggles the current symbol preview
    -- r	Rename symbol
    -- a	Code actions
    -- h	fold symbol
    -- l	Unfold symbol
    -- W	Fold all symbols
    -- E	Unfold all symbols
    -- R	Reset all folding
    -- ?	Show help message
    {'simrat39/symbols-outline.nvim'},
    -- toggleterm быстро открывает терминал 
    -- ctrl + \
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    -- which-key <leader> - отображаются комбинации клавиш с пробелом
    {"folke/which-key.nvim"},
    -- mini icons для корректной работы which key
    {'echasnovski/mini.icons'},
    -- DAP - дебагер <leader>db
    {'mfussenegger/nvim-dap'},
    {
        'jay-babu/mason-nvim-dap.nvim',
        event = "VeryLazy"
    },
    -- DAP UI - интерфейс
    {
        'rcarriga/nvim-dap-ui',
        event = "VeryLazy"
    },
    -- Nvim-nio - нужна для dap ui
    {'nvim-neotest/nvim-nio'}
})
