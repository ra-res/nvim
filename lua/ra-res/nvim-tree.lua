vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
  },
}

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  auto_reload_on_write = true,
  open_on_setup = false,
  sort_by = "name",
  -- git_hl = true,
  -- highlight_opened_files = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  view = {
    width = 30,
    height = 30,
    side = "right",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
  },
  renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true
    }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 400,
  },
 -- show_icons = {
 --    git = 1,
 --    folders = 1,
 --    files = 1,
 --    folder_arrows = 1,
 --    tree_width = 30,
 --  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = true,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
}

-- default mappings
-- local list = {
--   { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
--   { key = "<C-e>",                        action = "edit_in_place" },
--   { key = {"O"},                          action = "edit_no_picker" },
--   { key = {"<2-RightMouse>", "<C-]>"},    action = "cd" },
--   { key = "<C-v>",                        action = "vsplit" },
--   { key = "<C-x>",                        action = "split" },
--   { key = "<C-t>",                        action = "tabnew" },
--   { key = "<",                            action = "prev_sibling" },
--   { key = ">",                            action = "next_sibling" },
--   { key = "P",                            action = "parent_node" },
--   { key = "<BS>",                         action = "close_node" },
--   { key = "<Tab>",                        action = "preview" },
--   { key = "K",                            action = "first_sibling" },
--   { key = "J",                            action = "last_sibling" },
--   { key = "I",                            action = "toggle_git_ignored" },
--   { key = "H",                            action = "toggle_dotfiles" },
--   { key = "R",                            action = "refresh" },
--   { key = "a",                            action = "create" },
--   { key = "d",                            action = "remove" },
--   { key = "D",                            action = "trash" },
--   { key = "r",                            action = "rename" },
--   { key = "<C-r>",                        action = "full_rename" },
--   { key = "x",                            action = "cut" },
--   { key = "c",                            action = "copy" },
--   { key = "p",                            action = "paste" },
--   { key = "y",                            action = "copy_name" },
--   { key = "Y",                            action = "copy_path" },
--   { key = "gy",                           action = "copy_absolute_path" },
--   { key = "[c",                           action = "prev_git_item" },
--   { key = "]c",                           action = "next_git_item" },
--   { key = "-",                            action = "dir_up" },
--   { key = "s",                            action = "system_open" },
--   { key = "q",                            action = "close" },
--   { key = "g?",                           action = "toggle_help" },
--   { key = "W",                            action = "collapse_all" },
--   { key = "S",                            action = "search_node" },
--   { key = "<C-k>",                        action = "toggle_file_info" },
--   { key = ".",                            action = "run_file_command" }
-- }
