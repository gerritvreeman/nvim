local c = {
  none     = "none",
  base03   = "#002b36",
  base02   = "#073642",
  base01   = "#586e75",
  base00   = "#657b83",
  base0    = "#839496",
  base1    = "#93a1a1",
  base2    = "#eee8d5",
  base3    = "#fdf6e3",
  yellow   = "#b58900",
  orange   = "#cb4b16",
  red      = "#dc322f",
  magenta  = "#d33682",
  violet   = "#6c71c4",
  blue     = "#268bd2",
  cyan     = "#2aa198",
  green    = "#859900",
}

local ct = {
  none     = "none",
  base03   = 8,
  base02   = 0,
  base01   = 10,
  base00   = 11,
  base0    = 12,
  base1    = 14,
  base2    = 7,
  base3    = 15,
  yellow   = 3,
  orange   = 9,
  red      = 1,
  magenta  = 5,
  violet   = 13,
  blue     = 4,
  cyan     = 6,
  green    = 2,
}

if vim.o.background == "light" then
  c.base1   = c.base01
  c.base0   = c.base00
  c.base01  = c.base1
  c.base02  = c.base2
  c.base03  = c.base3
  ct.base1  = ct.base01
  ct.base0  = ct.base00
  ct.base01 = ct.base1
  ct.base02 = ct.base2
  ct.base03 = ct.base3
end

vim.cmd[[hi clear]]
vim.g.colors_name = "solarized"

vim.api.nvim_set_hl(0, "ColorColumn",              { bg=c.base02,       fg=c.none,      ctermbg=ct.base02,      ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Conceal",                  { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "CurSearch",                { bg=c.none,         fg=c.blue,      ctermbg=ct.none,        ctermfg=ct.blue,        reverse=true       })
vim.api.nvim_set_hl(0, "Cursor",                   { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "lCursor",                  { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "CursorIM",                 { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "CursorColumn",             { bg=c.base02,       fg=c.none,      ctermbg=ct.base02,      ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "CursorLine",               { bg=c.base02,       fg=c.none,      ctermbg=ct.base02,      ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Directory",                { bg=c.none,         fg=c.blue,      ctermbg=ct.none,        ctermfg=ct.blue                            })
vim.api.nvim_set_hl(0, "DiffAdd",                  { bg=c.none,         fg=c.green,     ctermbg=ct.none,        ctermfg=ct.green                           })
vim.api.nvim_set_hl(0, "DiffChange",               { bg=c.none,         fg=c.yellow,    ctermbg=ct.none,        ctermfg=ct.yellow                          })
vim.api.nvim_set_hl(0, "DiffDelete",               { bg=c.none,         fg=c.red,       ctermbg=ct.none,        ctermfg=ct.red                             })
vim.api.nvim_set_hl(0, "DiffText",                 { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "EndOfBuffer",              { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "TermCursor",               { bg=c.base0,        fg=c.none,      ctermbg=ct.base0,       ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "TermCursorNC",             { bg=c.base01,       fg=c.none,      ctermbg=ct.base01,      ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "ErrorMsg",                 { bg=c.none,         fg=c.red,       ctermbg=ct.none,        ctermfg=ct.red                             })
vim.api.nvim_set_hl(0, "WinSeparator",             { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Folded",                   { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "FoldColumn",               { link="LineNr" })
vim.api.nvim_set_hl(0, "SignColumn",               { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "IncSearch",                { bg=c.none,         fg=c.orange,    ctermbg=ct.none,        ctermfg=ct.orange,      reverse=true       })
vim.api.nvim_set_hl(0, "Substitute",               { bg=c.none,         fg=c.red,       ctermbg=ct.none,        ctermfg=ct.red,         strikethrough=true })
vim.api.nvim_set_hl(0, "LineNr",                   { bg=c.none,         fg=c.base01,    ctermbg=ct.none,        ctermfg=ct.base01                          })
vim.api.nvim_set_hl(0, "LineNrAbove",              { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "LineNrBelow",              { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "CursorLineNr",             { bg=c.none,         fg=c.base1,     ctermbg=ct.none,        ctermfg=ct.base1,       bold=true          })
vim.api.nvim_set_hl(0, "CursorLineFold",           { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "CursorLineSign",           { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "MatchParen",               { bg=c.base02,       fg=c.red,       ctermbg=ct.base02,      ctermfg=ct.red,         bold=true          })
vim.api.nvim_set_hl(0, "ModeMsg",                  { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "MsgArea",                  { bg=c.none,         fg=c.base01,    ctermbg=ct.none,        ctermfg=ct.base01                          })
vim.api.nvim_set_hl(0, "MsgSeparator",             { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "MoreMsg",                  { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "NonText",                  { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Normal",                   { bg=c.none,         fg=c.base0,     ctermbg=ct.none,        ctermfg=ct.base0                           })
vim.api.nvim_set_hl(0, "NormalFloat",              { bg=c.base02,       fg=c.none,      ctermbg=ct.base02,      ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "FloatBorder",              { bg=c.base02,       fg=c.none,      ctermbg=ct.base02,      ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "FloatTitle",               { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "NormalNC",                 { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Pmenu",                    { bg=c.base02,       fg=c.none,      ctermbg=ct.base02,      ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "PmenuSel",                 { bg=c.base03,       fg=c.none,      ctermbg=ct.base03,      ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "PmenuKind",                { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "PmenuKindSel",             { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "PmenuExtra",               { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "PmenuExtraSel",            { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "PmenuSbar",                { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "PmenuThumb",               { bg=c.base02,       fg=c.none,      ctermbg=ct.base02,      ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Question",                 { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "QuickFixLine",             { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Search",                   { bg=c.none,         fg=c.yellow,    ctermbg=ct.none,        ctermfg=ct.yellow,      reverse=true       })
vim.api.nvim_set_hl(0, "SpecialKey",               { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "SpellBad",                 { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none,        underline=true     })
vim.api.nvim_set_hl(0, "SpellCap",                 { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "SpellLocal",               { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "SpellRare",                { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "StatusLine",               { bg=c.none,         fg=c.base01,    ctermbg=ct.none,        ctermfg=ct.base01                          })
vim.api.nvim_set_hl(0, "StatusLineNC",             { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "TabLine",                  { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "TabLineFill",              { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "TabLineSel",               { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Title",                    { bg=c.none,         fg=c.orange,    ctermbg=ct.none,        ctermfg=ct.orange                          })
vim.api.nvim_set_hl(0, "Visual",                   { bg=c.base02,       fg=c.none,      ctermbg=ct.base02,      ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "VisualNOS",                { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "WarningMsg",               { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Whitespace",               { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "WildMenu",                 { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "WinBar",                   { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "WinBarNC",                 { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Comment",                  { bg=c.none,         fg=c.base01,    ctermbg=ct.none,        ctermfg=ct.base01,      italic=true        })
vim.api.nvim_set_hl(0, "Constant",                 { bg=c.none,         fg=c.green,     ctermbg=ct.none,        ctermfg=ct.green                           })
vim.api.nvim_set_hl(0, "String",                   { bg=c.none,         fg=c.cyan,      ctermbg=ct.none,        ctermfg=ct.cyan                            })
vim.api.nvim_set_hl(0, "Character",                { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Number",                   { bg=c.none,         fg=c.magenta,   ctermbg=ct.none,        ctermfg=ct.magenta                         })
vim.api.nvim_set_hl(0, "Boolean",                  { bg=c.none,         fg=c.blue,      ctermbg=ct.none,        ctermfg=ct.blue                            })
vim.api.nvim_set_hl(0, "Float",                    { bg=c.none,         fg=c.magenta,   ctermbg=ct.none,        ctermfg=ct.magenta                         })
vim.api.nvim_set_hl(0, "Identifier",               { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Function",                 { bg=c.none,         fg=c.blue,      ctermbg=ct.none,        ctermfg=ct.blue                            })
vim.api.nvim_set_hl(0, "Statement",                { bg=c.none,         fg=c.green,     ctermbg=ct.none,        ctermfg=ct.green                           })
vim.api.nvim_set_hl(0, "Conditional",              { bg=c.none,         fg=c.green,     ctermbg=ct.none,        ctermfg=ct.green                           })
vim.api.nvim_set_hl(0, "Repeat",                   { bg=c.none,         fg=c.violet,    ctermbg=ct.none,        ctermfg=ct.violet                          })
vim.api.nvim_set_hl(0, "Label",                    { bg=c.none,         fg=c.cyan,      ctermbg=ct.none,        ctermfg=ct.cyan                            })
vim.api.nvim_set_hl(0, "Operator",                 { bg=c.none,         fg=c.green,     ctermbg=ct.none,        ctermfg=ct.green                           })
vim.api.nvim_set_hl(0, "Keyword",                  { bg=c.none,         fg=c.green,     ctermbg=ct.none,        ctermfg=ct.green                           })
vim.api.nvim_set_hl(0, "Exception",                { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "PreProc",                  { bg=c.none,         fg=c.cyan,      ctermbg=ct.none,        ctermfg=ct.cyan                            })
vim.api.nvim_set_hl(0, "Include",                  { bg=c.none,         fg=c.orange,    ctermbg=ct.none,        ctermfg=ct.orange                          })
vim.api.nvim_set_hl(0, "Define",                   { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Macro",                    { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "PreCondit",                { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Type",                     { bg=c.none,         fg=c.yellow,    ctermbg=ct.none,        ctermfg=ct.yellow                          })
vim.api.nvim_set_hl(0, "StorageClass",             { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Structure",                { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Typedef",                  { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Special",                  { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "SpecialChar",              { bg=c.none,         fg=c.orange,    ctermbg=ct.none,        ctermfg=ct.orange                          })
vim.api.nvim_set_hl(0, "Tag",                      { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Delimiter",                { bg=c.none,         fg=c.magenta,   ctermbg=ct.none,        ctermfg=ct.magenta                         })
vim.api.nvim_set_hl(0, "SpecialComment",           { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Debug",                    { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Underlined",               { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none,        underline=true     })
vim.api.nvim_set_hl(0, "Ignore",                   { bg=c.none,         fg=c.none,      ctermbg=ct.none,        ctermfg=ct.none                            })
vim.api.nvim_set_hl(0, "Error",                    { bg=c.none,         fg=c.red,       ctermbg=ct.none,        ctermfg=ct.red                             })
vim.api.nvim_set_hl(0, "Todo",                     { bg=c.none,         fg=c.magenta,   ctermbg=ct.none,        ctermfg=ct.magenta                         })
-- Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError",          { bg=c.none,         fg=c.red,       ctermbg=ct.none,        ctermfg=ct.red                             })
vim.api.nvim_set_hl(0, "DiagnosticWarn",           { bg=c.none,         fg=c.yellow,    ctermbg=ct.none,        ctermfg=ct.yellow                          })
vim.api.nvim_set_hl(0, "DiagnosticInfo",           { bg=c.none,         fg=c.cyan,      ctermbg=ct.none,        ctermfg=ct.cyan                            })
vim.api.nvim_set_hl(0, "DiagnosticHint",           { bg=c.none,         fg=c.magenta,   ctermbg=ct.none,        ctermfg=ct.magenta                         })
vim.api.nvim_set_hl(0, "DiagnosticOk",             { bg=c.none,         fg=c.green,     ctermbg=ct.none,        ctermfg=ct.green                           })
vim.api.nvim_set_hl(0, "DiagnosticDeprecated",     { bg=c.none,         fg=c.base01,    ctermbg=ct.none,        ctermfg=ct.base01,      strikethrough=true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline=true,    sp=c.red,    })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn",  { underline=true,    sp=c.yellow  })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo",  { underline=true,    sp=c.cyan    })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint",  { underline=true,    sp=c.magenta })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk",    { underline=true,    sp=c.green   })
