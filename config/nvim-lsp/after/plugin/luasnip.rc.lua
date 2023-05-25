local ls = require "luasnip"
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node
local rep = require("luasnip.extras").rep

local date = function() return { os.date('%Y-%m-%d') } end

ls.add_snippets(nil, {
  markdown = {
    snip({
      trig = "meta",
      namr = "METADATA",
      dscr = "Markdown Boiler plate",
    }, {
      text({ "---", "title: " }),
      insert(1, "note_title"),
      text({ "", "author: " }),
      insert(2, "author"),
      text({ "", "date: " }),
      func(date, {}),
      text({ "", "categories: [" }),
      insert(3, ""),
      text({ "]", "lastmod: " }),
      func(date, {}),
      text({ "", "tags: [" }),
      insert(4),
      text({ "]", "comments: true", "---", "" }),
      insert(0)
    })
  },
  javascript = {
    snip({
        trig = "rfc",
        namr = "reactFucntionalComponent",
        dscr = "Creates a React Functional Component with ES7 module system",
      },
      {
        text({ "import React from 'react';", "" }),
        text({ "", "export default function " }),
        insert(1, ""),
        text({ "() {", "" }),
        text({ "   return (", "" }),
        text({ "    <div>" }),
        insert(2, "details"),
        text({ "</div>", "" }),
        text({ "  )", "" }),
        text({ "}", "" }),
      })
    , snip({
      trig = "rfce",
      namr = "reactFucntionalComponentExport",
      dscr = "Creates a React Functional Component Export with ES7 module system",
    },
    {
      text({ "import React from 'react';", "" }),
      text({ "", "function  " }),
      insert(1, ""),
      text({ "() {", "" }),
      text({ "   return (", "" }),
      text({ "    <div>" }),
      insert(2, "details"),
      text({ "</div>", "" }),
      text({ "  )", "" }),
      text({ "}", "" }),
      text({ "", "export default " }),
      rep(1)
    })
  },
})

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
