return {
    {"nvim-treesitter/playground", cmd = "TSPlaygroundToggle"}, {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate", -- ensures parsers are installed/updated
        opts = {
            ensure_installed = {
                "cpp", "css", "fish", "gitignore", "rust", "python"
            },

            highlight = {enable = true}, -- explicitly enable highlighting
            indent = {enable = true},

            query_linter = {
                enable = true,
                use_virtual_text = true,
                lint_events = {"BufWrite", "CursorHold"}
            },

            playground = {
                enable = true,
                disable = {},
                updatetime = 25,
                persist_queries = true,
                keybindings = {
                    toggle_query_editor = "o",
                    toggle_hl_groups = "i",
                    toggle_injected_languages = "t",
                    toggle_anonymous_nodes = "a",
                    toggle_language_display = "I",
                    focus_language = "f",
                    unfocus_language = "F",
                    update = "R",
                    goto_node = "<cr>",
                    show_help = "?"
                }
            }
        },
        config = function(_, opts)
            local ok, configs = pcall(require, "nvim-treesitter.configs")
            if not ok then
                vim.notify("nvim-treesitter not found!", vim.log.levels.WARN)
                return
            end

            configs.setup(opts)

            -- MDX filetype + Treesitter
            vim.filetype.add({extension = {mdx = "mdx"}})
            vim.treesitter.language.register("markdown", "mdx")
        end
    }
}
