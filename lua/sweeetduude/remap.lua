vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move line up" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "scroll down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "scroll up" })

vim.keymap.set("n", "+", "$", { desc = "end of line" })
vim.keymap.set("n", "<leader>de", "d$", { desc = "delete to end of line" })
vim.keymap.set("n", "<leader>db", "0f=hc^", { desc = "chage before =" })
vim.keymap.set("n", "<leader>da", "0f=lc$", { desc = "chage after =" })

vim.keymap.set("v", "<leader>a(", "c()<esc>P", { desc = "put selection in parens" })
vim.keymap.set("v", "<leader>a[", "c[]<esc>P", { desc = "put selection in square brackets" })
vim.keymap.set("v", "<leader>a{", "c{}<esc>P", { desc = 'put selection in squiggly brackets' })
vim.keymap.set("v", "<leader>a<", "c<><esc>P", { desc = "put selection in angle brackets" })
vim.keymap.set("v", "<leader>a'", "c''<esc>P", { desc = "put selection in single quotes" })
vim.keymap.set("v", "<leader>a\"", "c\"\"<esc>P", { desc = "put selection in double quotes" })
vim.keymap.set("v", "<leader>a`", "c``<esc>P", { desc = "put selection in backticks" })


vim.keymap.set("n", "Q", "<nop>")
for _, mode in pairs({ 'n', 'i', 'v', 'x' }) do
    for _, key in pairs({ '<Up>', '<Down>', '<Left>', '<Right>', '<Home>', '<End>' }) do
        vim.keymap.set(mode, key, '<nop>')
    end
end

-- add C-c to add to clipboard
vim.keymap.set('v', "<C-c>", '"+y')

-- add C-x to cut to clipboard
vim.keymap.set('v', "<C-x>", '"+d')

-- add C-v to paste from clipboard
vim.keymap.set('i', "<C-v>", '<esc>"+p')



vim.keymap.set('v', '<leader>gpt', 'yGoInstructions:<esc>OCode:<esc>p<esc>kVG"+d',
    { desc = "copy to chat-GPT template" })
