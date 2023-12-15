vim.opt.rtp:append(
    vim.fn.stdpath("data") .. "/site/pack/packages/start/plenary.nvim"
)

require("plenary")
