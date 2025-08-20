return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
	event = "VeryLazy",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"lua",
			"luadoc",
			"c",
			"cpp",
			"java",
			"javadoc",
			"python",
			"sql",
		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outher",
					["if"] = "@function.inner",
					["ac"] = "@conditional.outher",
					["ic"] = "@conditional.inner",
					["al"] = "@loop.outher",
					["il"] = "@loop.inner",
				}
			}
		}
	}
}
