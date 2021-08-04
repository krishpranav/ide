local opt = vim.opt
local g = vim.g

opt.undofile = true
opt.ruler = false
opt.hidden = true
opt.ignorecase = true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.cul = true
opt.mouse = "a"
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.updatetime = 250 
opt.timeoutlen = 400
opt.clipboard = "unnamedplus"

opt.shortmess:append("sI")

vim.cmd("let &fcs='eob: '")

opt.number = true
opt.numberwidth = 2

opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true

opt.whichwrap:append("<>hl")

g.mapleader = " "
g.auto_save = false

local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end


vim.cmd [[ au TermOpen term://* setlocal nonumber laststatus=0 ]]
