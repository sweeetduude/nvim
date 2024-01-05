vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "+", "$")


vim.keymap.set("n", "<leader>de", "d$")


for _, mode in pairs({ 'n', 'i', 'v', 'x' }) do
    for _, key in pairs({ '<Up>', '<Down>', '<Left>', '<Right>', '<Home>', '<End>' }) do
        vim.keymap.set(mode, key, '<nop>')
    end
end



-- change before/after first =
vim.keymap.set("n", "<leader>db", "0f=hc^", { desc = "chage before =" })
vim.keymap.set("n", "<leader>da", "0f=lc$", { desc = "chage after =" })
