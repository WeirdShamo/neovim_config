 -- Optional, you don't have to run setup.
require("transparent").setup({
  -- table: default groups
  groups = {
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 
    'PreProc', 
    'Type', 
    'Underlined', 
    'Todo', 
    'String', 
    'Function',
    'Conditional', 
    'Repeat', 
    'Operator', 
    'Structure', 
    'NonText',
    'SignColumn', 
    'EndOfBuffer',
    'CursorLine', 
    'LineNr', 
    'CursorLineNr', 
    'StatusLine', 
    'StatusLineNC',
    --"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
    --"NvimTreeNormal" -- NvimTree
  },
  -- table: additional groups that should be cleared
  extra_groups = {},
  -- table: groups you don't want to clear
  exclude_groups = {},
  -- function: code to be executed after highlight groups are cleared
  -- Also the user event "TransparentClear" will be triggered
  on_clear = function() end,
})
