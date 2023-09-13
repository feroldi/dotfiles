-- <leader> is space.
vim.g.mapleader = " "

-- Open file explorer.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Toggle Undotree window.
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeShow)

-- Disable arrow for navigating.
vim.keymap.set({ "n", "i" }, "<up>", "<nop>")
vim.keymap.set({ "n", "i" }, "<down>", "<nop>")
vim.keymap.set({ "n", "i" }, "<left>", "<nop>")
vim.keymap.set({ "n", "i" }, "<right>", "<nop>")

-- Map j/k to be gj/gk, but use default ones when using them with a count.
vim.keymap.set({ "n", "x" }, "j", function() return vim.v.count > 0 and "j" or "gj" end, { noremap = true, expr = true })
vim.keymap.set({ "n", "x" }, "k", function() return vim.v.count > 0 and "k" or "gk" end, { noremap = true, expr = true })

-- Left and right can switch buffers
vim.keymap.set("n", "<left>", vim.cmd.bp)
vim.keymap.set("n", "<right>", vim.cmd.bn)

-- Map movement keys to Control-[h,j,k,l]
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Map ESC and movement keys to terminal mode
vim.keymap.set("t", "<Esc>",  '<C-\\><C-n>')
vim.keymap.set("t", "<C-h>",  '<C-\\><C-n><C-w>h')
vim.keymap.set("t", "<C-j>",  '<C-\\><C-n><C-w>j')
vim.keymap.set("t", "<C-k>",  '<C-\\><C-n><C-w>k')
vim.keymap.set("t", "<C-l>",  '<C-\\><C-n><C-w>l')

-- Move selected code around, and even indent it relative to context.
vim.keymap.set("v", "J",  ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K",  ":m '<-2<CR>gv=gv")

-- Keep cursor at same position when merging next line up.
vim.keymap.set("n", "J",  "mzJ`z")

-- Keep cursor at the center of the view when going up and down.
vim.keymap.set("n", "<C-d>",  "<C-d>zz")
vim.keymap.set("n", "<C-u>",  "<C-u>zz")

-- Keep cursor at the center when searching up and down.
vim.keymap.set("n", "n",  "nzzzv")
vim.keymap.set("n", "N",  "Nzzzv")

-- Paste or delete without losing originally copied content.
vim.keymap.set("x", "<leader>p",  "\"_dp")
vim.keymap.set({ "n", "v" }, "<leader>d",  "\"_d")
vim.keymap.set({ "n", "v" }, "<leader>x",  "\"_x")

-- Easily use yank to system's clipboard.
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Get rid of that nasty command.
vim.keymap.set("n", "Q", "<nop>")

-- Give you a search-and-replace prompt for the current word you're on.
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Nagivate to start and end of current line.
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- Format current buffer using LSP.
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)
