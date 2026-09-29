return {
    "folke/neodev.nvim",
    "folke/which-key.nvim",
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    -- Use tokyonight colorscheme
    { "folke/tokyonight.nvim", config = function() vim.cmd.colorscheme "tokyonight" end },
}
