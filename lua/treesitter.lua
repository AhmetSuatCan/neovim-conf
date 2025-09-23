
require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "javascript",  -- JavaScript
    "typescript",  -- TypeScript (if you're using it)
    "html",         -- HTML for JSX support
    "css",          -- CSS if you're working with styles
  },
  highlight = {
    enable = true,  -- Enable Treesitter syntax highlighting
    additional_vim_regex_highlighting = false,  -- Disable fallback regex highlighting (use Treesitter exclusively)
  },
}




