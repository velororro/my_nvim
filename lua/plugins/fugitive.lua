return {
    "tpope/vim-fugitive",
    cmd = {"G", "Git"},
    keys = {
        {"<leader>ga", ":Git fetch --all -p<Cr>", desc = "Git fetch"},
        {"<leader>gl", ":Git pull<Cr>", desc = "Git pull"},
    },
}
