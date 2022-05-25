
local status_ok, nvim_lsp_ts_utils= pcall(require, "nvim-lsp-ts-utils")
if not status_ok then
  return
end

return {
  init_options = vim.tbl_deep_extend(
    "force",
    nvim_lsp_ts_utils.init_options,
    {
      preferences = {
        importModuleSpecifierEnding = "auto",
        importModuleSpecifierPreference = "non-relative",
      },
      documentFormatting = false,
    }
  ),
}
