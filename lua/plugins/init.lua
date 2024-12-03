return {
    {
        "fatih/vim-go",
        name = "vimgo",
        ft = "go"
    },
    {
        "prettier/vim-prettier",
        name = "prettier",
        ft = "jsx,tsx,js,html,css,sass,scss,xml"
    },
    {
        "folke/zen-mode.nvim",
        name = "zen",
        lazy = false,
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = false,
        opts = {
            variant = 'moon'
        }
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = {
            variant = 'day'
        },
    },
    {
        'EdenEast/nightfox.nvim',
        lazy = false,
        priority = 1000,
    },
    {
        'sainnhe/everforest',
        lazy = false,
        priority = 1000,
    }
}
