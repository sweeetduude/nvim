return {
    'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
        vim.keymap.set({ 'n', 'v' }, '<leader>bc', ':BufferClose<CR>', { desc = 'close buffer' })
        vim.keymap.set({ 'n', 'v' }, '<leader>bd', ':BufferCloseAllButPinned<CR>',
            { desc = 'close all but pinned buffers' })
        vim.keymap.set({ 'n', 'v' }, '<leader>bb', ':BufferPrevious<CR>', { desc = 'go to previous buffer' })
        vim.keymap.set({ 'n', 'v' }, '<leader>be', ':BufferPin<CR>', { desc = 'pin buffer' })

        for i = 1, 9 do
            vim.keymap.set({ 'n', 'v' }, '<leader>b' .. i, ':BufferGoto ' .. i .. '<CR>',
                { desc = 'go to buffer ' .. i })
        end
    end,
    opts = {
        animation = true,
        icons = {
            buffer_index = true,
            separator = { left = '', right = '' },
            pinned = { button = '', filename = true },
            filetype = { enabled = false },
        }
    }
}
