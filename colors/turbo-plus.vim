" A modern, softer take on Turbo C++ colorscheme for Vim.

highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "turbo-plus"

" Color palette (Turbo C++ inspired dark blue tones, softened)
let s:bg = "#0A1428"
let s:bg_alt = "#0F1B33"
let s:bg_menu = "#13233F"
let s:bg_line = "#1A2A4A"
let s:bg_widget = "#1F3255"
let s:bg_select = "#2A4A7A"
let s:bg_match = "#2A4A7A"
let s:border = "#334F7F"
let s:border_alt = "#4A6A9F"

let s:fg = "#E0E0E0"
let s:fg_alt = "#F0F0B0"
let s:fg_dim = "#A0A8B8"
let s:fg_muted = "#6A7A9A"
let s:white = "#FFFFFF"

let s:accent = "#40C0FF"
let s:accent_dim = "#2098D8"
let s:accent_alt = "#60D0FF"

let s:comment = "#70B0A0"
let s:string = "#A0E0B0"
let s:regex = "#A0E0B0"
let s:number = "#B0C0FF"
let s:keyword = "#F0E070"
let s:func = "#D0B0FF"
let s:type = "#70E0C0"
let s:variable = "#E0E0E0"
let s:constant = "#B0C0FF"
let s:operator = "#F0E070"
let s:preproc = "#F0A070"
let s:annotation = "#F0C070"
let s:param = "#F0C070"
let s:member = "#B0C0FF"
let s:tag = "#A0E0B0"
let s:attr = "#B0C0FF"
let s:module = "#70E0C0"
let s:macro = "#40B0E0"

let s:err = "#FF7070"
let s:warn = "#FFD070"
let s:info = "#70B0FF"
let s:hint = "#40C0A0"
let s:debug = "#C080FF"

let s:diff_add = "#1A3A2A"
let s:diff_add_fg = "#80E0A0"
let s:diff_del = "#3A1A1A"
let s:diff_del_fg = "#FF9090"
let s:diff_chg = "#2A2A4A"

" Helper function to set highlighting
function! s:hl(group, fg, bg, attr)
  if a:fg != ""
    exec "highlight " . a:group . " ctermfg=" . a:fg . " guifg=" . a:fg
  endif
  if a:bg != ""
    exec "highlight " . a:group . " ctermbg=" . a:bg . " guibg=" . a:bg
  endif
  if a:attr != ""
    exec "highlight " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfunction

" Editor / UI
exec "highlight Normal guifg=" . s:fg . " guibg=" . s:bg
exec "highlight NormalNC guifg=" . s:fg . " guibg=" . s:bg
exec "highlight NormalFloat guifg=" . s:fg . " guibg=" . s:bg_menu
exec "highlight FloatBorder guifg=" . s:border_alt . " guibg=" . s:bg_menu
exec "highlight FloatTitle guifg=" . s:fg_alt . " guibg=" . s:bg_menu . " gui=bold"
exec "highlight NonText guifg=" . s:fg_muted
exec "highlight EndOfBuffer guifg=" . s:bg
exec "highlight Whitespace guifg=" . s:fg_muted
exec "highlight SpecialKey guifg=" . s:fg_muted
exec "highlight Conceal guifg=" . s:fg_dim
exec "highlight Cursor guifg=" . s:bg . " guibg=" . s:fg
exec "highlight CursorLine guibg=" . s:bg_line
exec "highlight CursorColumn guibg=" . s:bg_line
exec "highlight ColorColumn guibg=" . s:bg_line
exec "highlight LineNr guifg=" . s:fg_muted
exec "highlight CursorLineNr guifg=" . s:fg_alt . " gui=bold"
exec "highlight SignColumn guibg=" . s:bg
exec "highlight FoldColumn guifg=" . s:fg_muted . " guibg=" . s:bg
exec "highlight Folded guifg=" . s:fg_dim . " guibg=" . s:bg_line
exec "highlight Visual guibg=" . s:bg_select
exec "highlight VisualNOS guibg=" . s:bg_select
exec "highlight Search guifg=" . s:fg . " guibg=" . s:bg_select
exec "highlight IncSearch guifg=" . s:white . " guibg=" . s:accent
exec "highlight CurSearch guifg=" . s:white . " guibg=" . s:accent
exec "highlight MatchParen guifg=" . s:accent_alt . " gui=bold,underline"
exec "highlight StatusLine guifg=" . s:fg_dim . " guibg=" . s:bg_alt
exec "highlight StatusLineNC guifg=" . s:fg_muted . " guibg=" . s:bg_alt
exec "highlight WinSeparator guifg=" . s:border . " guibg=" . s:bg
exec "highlight VertSplit guifg=" . s:border . " guibg=" . s:bg
exec "highlight TabLine guifg=" . s:fg_dim . " guibg=" . s:bg_alt
exec "highlight TabLineFill guibg=" . s:bg_alt
exec "highlight TabLineSel guifg=" . s:fg_alt . " guibg=" . s:bg . " gui=underline"

" Popup menus / completion
exec "highlight Pmenu guifg=" . s:fg . " guibg=" . s:bg_menu
exec "highlight PmenuSel guifg=" . s:fg_alt . " guibg=" . s:accent_dim
exec "highlight PmenuSbar guibg=" . s:bg_line
exec "highlight PmenuThumb guibg=" . s:fg_muted
exec "highlight PmenuKind guifg=" . s:func . " guibg=" . s:bg_menu
exec "highlight PmenuKindSel guifg=" . s:func . " guibg=" . s:accent_dim
exec "highlight PmenuExtra guifg=" . s:fg_dim . " guibg=" . s:bg_menu
exec "highlight PmenuExtraSel guifg=" . s:fg_alt . " guibg=" . s:accent_dim
exec "highlight PmenuMatch guifg=" . s:accent_alt . " gui=bold"
exec "highlight PmenuMatchSel guifg=" . s:accent_alt . " guibg=" . s:accent_dim . " gui=bold"
exec "highlight WildMenu guifg=" . s:fg_alt . " guibg=" . s:accent_dim

" Messages
exec "highlight ErrorMsg guifg=" . s:err
exec "highlight WarningMsg guifg=" . s:warn
exec "highlight ModeMsg guifg=" . s:fg_alt . " gui=bold"
exec "highlight MoreMsg guifg=" . s:accent
exec "highlight Question guifg=" . s:accent
exec "highlight Title guifg=" . s:keyword . " gui=bold"
exec "highlight Directory guifg=" . s:accent_alt

" Syntax (legacy groups)
exec "highlight Comment guifg=" . s:comment
exec "highlight String guifg=" . s:string
exec "highlight Character guifg=" . s:string
exec "highlight Number guifg=" . s:number
exec "highlight Boolean guifg=" . s:constant
exec "highlight Float guifg=" . s:number
exec "highlight Identifier guifg=" . s:variable
exec "highlight Function guifg=" . s:func
exec "highlight Statement guifg=" . s:keyword
exec "highlight Conditional guifg=" . s:preproc
exec "highlight Repeat guifg=" . s:preproc
exec "highlight Label guifg=" . s:keyword
exec "highlight Operator guifg=" . s:operator
exec "highlight Keyword guifg=" . s:keyword
exec "highlight Exception guifg=" . s:preproc
exec "highlight PreProc guifg=" . s:preproc
exec "highlight Include guifg=" . s:preproc
exec "highlight Define guifg=" . s:preproc
exec "highlight Macro guifg=" . s:macro
exec "highlight PreCondit guifg=" . s:preproc
exec "highlight Type guifg=" . s:type
exec "highlight StorageClass guifg=" . s:keyword
exec "highlight Structure guifg=" . s:type
exec "highlight Typedef guifg=" . s:type
exec "highlight Special guifg=" . s:annotation
exec "highlight SpecialChar guifg=" . s:regex
exec "highlight Tag guifg=" . s:tag
exec "highlight Delimiter guifg=" . s:fg
exec "highlight SpecialComment guifg=" . s:comment
exec "highlight Debug guifg=" . s:debug
exec "highlight Underlined gui=underline"
exec "highlight Error guifg=" . s:err
exec "highlight Todo guifg=" . s:warn . " gui=bold"

" Diagnostics
exec "highlight DiagnosticError guifg=" . s:err
exec "highlight DiagnosticWarn guifg=" . s:warn
exec "highlight DiagnosticInfo guifg=" . s:info
exec "highlight DiagnosticHint guifg=" . s:hint
exec "highlight DiagnosticUnderlineError gui=undercurl guisp=" . s:err
exec "highlight DiagnosticUnderlineWarn gui=undercurl guisp=" . s:warn
exec "highlight DiagnosticUnderlineInfo gui=undercurl guisp=" . s:info
exec "highlight DiagnosticUnderlineHint gui=undercurl guisp=" . s:hint
exec "highlight DiagnosticVirtualTextError guifg=" . s:err . " guibg=" . s:bg
exec "highlight DiagnosticVirtualTextWarn guifg=" . s:warn . " guibg=" . s:bg
exec "highlight DiagnosticVirtualTextInfo guifg=" . s:info . " guibg=" . s:bg
exec "highlight DiagnosticVirtualTextHint guifg=" . s:hint . " guibg=" . s:bg

" Diff / git
exec "highlight DiffAdd guibg=" . s:diff_add
exec "highlight DiffChange guibg=" . s:diff_chg
exec "highlight DiffDelete guifg=" . s:diff_del_fg . " guibg=" . s:diff_del
exec "highlight DiffText guibg=" . s:diff_chg . " gui=bold"

" Plugin support
exec "highlight GitSignsAdd guifg=" . s:diff_add_fg
exec "highlight GitSignsChange guifg=" . s:warn
exec "highlight GitSignsDelete guifg=" . s:diff_del_fg

" Telescope
exec "highlight TelescopeBorder guifg=" . s:border . " guibg=" . s:bg_menu
exec "highlight TelescopeNormal guifg=" . s:fg . " guibg=" . s:bg_menu
exec "highlight TelescopeSelection guifg=" . s:fg_alt . " guibg=" . s:accent_dim
exec "highlight TelescopeMatching guifg=" . s:accent_alt . " gui=bold"
exec "highlight TelescopePromptPrefix guifg=" . s:accent

" Bufferline
exec "highlight BufferLineFill guibg=" . s:bg_alt
exec "highlight BufferLineBackground guifg=" . s:fg_dim . " guibg=" . s:bg_alt
exec "highlight BufferLineBufferSelected guifg=" . s:fg_alt . " guibg=" . s:bg . " gui=bold"
exec "highlight BufferLineIndicatorSelected guifg=" . s:accent . " guibg=" . s:bg

" Which-key
exec "highlight WhichKey guifg=" . s:keyword
exec "highlight WhichKeyGroup guifg=" . s:func
exec "highlight WhichKeyDesc guifg=" . s:fg
exec "highlight WhichKeySeparator guifg=" . s:fg_dim
exec "highlight WhichKeyFloat guibg=" . s:bg_menu
