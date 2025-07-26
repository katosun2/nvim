-- 步骤 1: 获取 Neovim 的根安装目录
-- vim.v.progpath 是 nvim.exe 的完整路径
-- 第一次 :h 获取 bin 目录 (e.g., D:/nvim-win64/bin)
-- 第二次 :h 获取其父目录，即安装根目录 (e.g., D:/nvim-win64)
local nvim_install_dir = vim.fn.fnamemodify(vim.fn.fnamemodify(vim.v.progpath, ":h"), ":h")

-- 步骤 2: 构建解析器(parser)的安装路径
-- 我们将在 Neovim 安装目录下创建一个名为 "treesitter-parsers" 的文件夹来存放它们
-- 即使在 Windows 上，也推荐在 Lua 配置中使用正斜杠 "/"
local parser_dir = nvim_install_dir .. "/share/config/nvim-data/treesitter-parsers"

-- 步骤 3: 添加到搜索列表
vim.opt.runtimepath:prepend(parser_dir)

require('nvim-treesitter.configs').setup {
  parser_install_dir = parser_dir,
  highlight = {
    enable = true, -- if not set true, vue not work
  },
  indent = {
    enable = false,
  },
  incremental_selection = {
    enable = true,
  },
  ensure_installed = {
    "html",
    "css",
    "scss",
    "bash",
    "javascript",
    "typescript",
    "vue",
    "graphql",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "regex",
    "yaml",
  },
}

require('ts_context_commentstring').setup {
  enable_autocmd = false,
}

require('Comment').setup {
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}
