-- Mason - LSP manager/installer
--  - from: williamboman/mason.nvim
--  - docs: https://github.com/williamboman/mason.nvim/tree/main/doc
--  - and: williamboman/mason-lspconfig.nvim
--  - docs: https://github.com/williamboman/mason-lspconfig.nvim/tree/main/doc

require("mason").setup({
  -- The directory in which to install packages.
  --install_root_dir = path.concat { vim.fn.stdpath "data", "mason" },

  -- Where Mason should put its bin location in your PATH. Can be one of:
  ---@type '"prepend"' | '"append"' | '"skip"'
  PATH = "prepend",

  pip = {
    -- These args will be added to `pip install` calls. Note that setting extra args might impact intended behavior
    -- and is not recommended.
    -- Example: { "--proxy", "https://proxyserver" }
    install_args = {},
  },

  -- Controls to which degree logs are written to the log file. It's useful to set this to vim.log.levels.DEBUG when
  -- debugging issues with package installations.
  log_level = vim.log.levels.INFO,

  -- Limit for the maximum amount of packages to be installed at the same time. Once this limit is reached, any further
  -- packages that are requested to be installed will be put in a queue.
  max_concurrent_installers = 4,

  github = {
    -- The template URL to use when downloading assets from GitHub.
    -- The placeholders are the following (in order):
    -- 1. The repository (e.g. "rust-lang/rust-analyzer")
    -- 2. The release version (e.g. "v0.3.0")
    -- 3. The asset name (e.g. "rust-analyzer-v0.3.0-x86_64-unknown-linux-gnu.tar.gz")
    download_url_template = "https://github.com/%s/releases/download/%s/%s",
  },

  ui = {
    -- Whether to automatically check for new versions when opening the :Mason window.
    check_outdated_packages_on_open = true,

    -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
    border = "none",
    icons = {
      package_installed = "✓",
      package_pending = "◍",
      package_uninstalled = "◍",
    },

    keymaps = {
      toggle_package_expand = "<CR>",
      install_package = "i",
      update_package = "u",
      check_package_version = "c",
      update_all_packages = "U",
      check_outdated_packages = "C",
      uninstall_package = "X",
      cancel_installation = "<C-c>",
      apply_language_filter = "<C-f>",
    },
  },
})

-- LSP specific stuff:
require("mason-lspconfig").setup({

  ensure_installed = {},

  -- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
  -- This setting has no relation with the `ensure_installed` setting.
  -- Can either be:
  --   - false: Servers are not automatically installed.
  --   - true: All servers set up via lspconfig are automatically installed.
  --   - { exclude: string[] }: All servers set up via lspconfig, except the ones provided in the list, are automatically installed.
  --       Example: automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }
  automatic_installation = false,
})
