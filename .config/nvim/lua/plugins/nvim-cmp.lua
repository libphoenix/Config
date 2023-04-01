local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

local snip_status, snip = pcall(require, "luasnip")
if not snip_status then
  return
end

local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then
  return
end


-- load friendly-snippets
require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
  snippet = {
    expand = function(args)
      snip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),    -- scroll 
    ["<C-f>"] = cmp.mapping.scroll_docs(4),     -- scroll
    ["<C-Space>"] = cmp.mapping.complete(),     -- show completion suggestons
    ["<C-e>"] = cmp.mapping.abort(4),           -- close completion window
    ["<CR>"] = cmp.mapping.confirm({select = false }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_ls" }, -- lsp
    { name = "luasnip" }, -- snippets
    { name = "buffer" },  -- text within current buffer
    { name = "path" },    -- file system paths
  }),
  formatting = {
    format = lspkind.cmp_format({
      maxwidth = 50,
      ellipsis_char = "...",
    }),
  },
})
