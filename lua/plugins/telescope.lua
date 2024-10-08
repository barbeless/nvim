return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({

	defaults = {
	  hidden = false,
	  file_ignore_patterns = {".git\\", ".cache", "%.o", "%.a", "%.out", "%.class",
	  "%.pdf", "%.mkv", "%.mp4", "%.zip", "openssl\\"},
	},
	extensions = {
	  ["ui-select"] = {
	    require("telescope.themes").get_dropdown({}),
	  },
	},
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      require("telescope").load_extension("ui-select")
    end,
  },
}
