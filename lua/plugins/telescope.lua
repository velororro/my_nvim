return {
  "nvim-telescope/telescope.nvim",
  event = 'VeryLazy',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = 'make'
    }
  },
  opts = {
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      }
    }
  },
  config = function (opts)
    require("telescope").setup(opts)
    require("telescope").load_extension('fzf')
  end,
  keys = {
    {
      "<leader>pp",
      function ()
        require("telescope.builtin").git_files({ show_untracked = true })
      end,
      desc = "Telescope Git Files",
    },
    {
      "<leader>pe",
      function ()
        require("telescope.builtin").buffers()
      end,
      desc = "Telescope buffers",
    },
    {
      "<leader>gs",
      function ()
        require("telescope.builtin").git_status()
      end,
      desc = "Telescope Git Satus",
    },
    {
      "<leader>gc",
      function ()
        require("telescope.builtin").git_commits()
      end,
      desc = "Telescope Git Commits",
    },
    {
      "<leader>gb",
      function ()
        require("telescope.builtin").git_branches()
      end,
      desc = "Telescope Git Branches",
    },
    {
      "<leader>pf",
      function ()
        require("telescope.builtin").find_files()
      end,
      desc = "Telescope Find Files",
    },
    {
      "<leader>ph",
      function ()
        require("telescope.builtin").help_tags()
      end,
      desc = "Telescope Help",
    },
    {
      "<leader>bb",
      function ()
        require("telescope").extensions.file_browser.file_browser({ path = "%:h:p", select_buffer = true })
      end,
      desc = "Telescope File Browser",
    }
  },
}
