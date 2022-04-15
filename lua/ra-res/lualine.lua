local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}

lualine.setup{
  options = { theme  = 'gruvbox-flat' },
  sections = {
    lualine_a = { branch, diagnostics },
    lualine_c = {
      {
        'filename',
        path = 2 -- 0 = just filename, 1 = relative path, 2 = absolute path
      }
    }
  },
}
