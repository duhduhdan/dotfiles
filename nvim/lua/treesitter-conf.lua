require("nvim-treesitter.configs").setup{
    ensure_installed = {"typescript", "rust", "lua", "yaml", "vim", "dockerfile", "css", "scss", "html", "javascript"},
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    autotag = {
        enable = true
    }
}
