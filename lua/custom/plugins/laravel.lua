return {
-- Syntax and filetype for Blade templates
  {
    "jwalton512/vim-blade",
    ft = { "blade", "php" },
  },
 -- Formatting & linting
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "php_cs_fixer" },
        blade = { "prettier" },
      },
      formatters = {
        php_cs_fixer = {
          command = "php-cs-fixer",
          args = { "fix", "--using-cache=no", "--quiet", "$FILENAME" },
          stdin = false,
        },
      },
    },
  },
  -- Snippets & completions for Laravel
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
 "tpope/vim-projectionist", -- Laravel-style project mappings
  "noahfrederick/vim-laravel", -- Artisan, route & view helpers
  "noahfrederick/vim-composer", -- Composer integration
  "vim-test/vim-test", -- Run PHPUnit from Neovim
}
