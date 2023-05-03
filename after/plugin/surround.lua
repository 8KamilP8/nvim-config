require("nvim-surround").setup({
    keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal = "<leader>s",
        normal_cur =  "<leader>ss",
        normal_line =  "<leader>S",
        visual = "S",
        visual_line = "gS",
        delete = "ds",
        change = "cs",
    }
})
