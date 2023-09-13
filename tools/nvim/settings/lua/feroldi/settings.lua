vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.linebreak = true

vim.opt.lazyredraw = true

-- FIXME: Is this still needed?
-- Required by LanguageClient-neovim for operations modifying multiple buffers like rename.
vim.opt.laststatus = 2
vim.opt.hidden = true

-- Aligned visual block
vim.opt.virtualedit = "block"

-- Intuitive backspacing.
vim.opt.backspace = "indent,eol,start"

vim.opt.mouse = "a"

vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.background = "dark"
vim.cmd.colorscheme("jellybeans-feroldi")

-- Ignore files neovim doesn't use.
vim.opt.wildignore = (
    ".git,.hg,.svn,"
    .. "*.aux,*.out,*.toc,"
    .. "*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class,"
    .. "*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp,"
    .. "*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg,"
    .. "*.mp3,*.oga,*.ogg,*.wav,*.flac,"
    .. "*.eot,*.otf,*.ttf,*.woff,"
    .. "*.doc,*.pdf,*.cbr,*.cbz,"
    .. "*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb,"
    .. "*.swp,.lock,.DS_Store,._*"
)

-- FIXME: This doesn't looke good to me.
--vim.opt.termguicolors = true

vim.opt.scrolloff = 8

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Removes trailing whitespaces from every line when saving.
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "<buffer>" },
    callback = function(ev)
        local view = vim.fn.winsaveview()
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.winrestview(view)
    end,
})

-- Disables display line numbers for terminal mode.
vim.api.nvim_create_autocmd({ "TermOpen" }, {
    pattern = { "*" },
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
    end,
})
