local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
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
