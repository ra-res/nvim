require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'css',
    'graphql',
    'html',
    'javascript',
    'json',
    'java',
    'lua',
    'python',
    'tsx',
    'typescript',
  },
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}