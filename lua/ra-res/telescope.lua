local status_ok, telescope = pcall(require, "telescope")

if not status_ok then
  return
end

telescope.setup {
  defaults = {
    file_ignore_patterns = { "%.git/", "node_modules/", "coverage/", "__pycache__/", "%.o" },
  },
  -- pickers = {
  --   find_files = {
  --     theme = "ivy",
  --   },
  -- }
}
