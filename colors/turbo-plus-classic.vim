" A faithful recreation of the original Turbo C++ colorscheme for Vim,
" with enhanced syntax highlighting.

highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name = "turbo-plus-classic"

" Color palette (Authentic Turbo C++ colors - deep blue, bright cyan/yellow)
let s:bg = "#000020"
let s:bg_alt = "#000030"
let s:bg_menu = "#000040"
let s:bg_line = "#001050"
let s:bg_widget = "#001040"
let s:bg_select = "#002080"
let s:bg_match = "#00208090"
let s:border = "#0000AA"
let s:border_alt = "#0000CC"

let s:fg = "#FFFFFF"
let s:fg_alt = "#FFFF55"
let s:fg_dim = "#AAAAAA"
let s:fg_muted = "#555555"
let s:white = "#FFFFFF"

let s:accent = "#00FFFF"
let s:accent_dim = "#0088FF"
let s:accent_alt = "#00FFFF"

let s:comment = "#008080"
let s:string = "#00FF00"
let s:regex = "#00FF00"
let s:number = "#FFFF00"
let s:keyword = "#FFFF00"
let s:func = "#00FFFF"
let s:type = "#00FF00"
let s:variable = "#FFFFFF"
let s:constant = "#FFFF00"
let s:operator = "#FFFF00"
let s:preproc = "#FF8800"
let s:annotation = "#FF8800"
let s:param = "#FFFF00"
let s:member = "#00FFFF"
let s:tag = "#00FF00"
let s:attr = "#FFFF00"
let s:module = "#00FF00"
let s:macro = "#FF8800"

let s:err = "#FF5555"
let s:warn = "#FFFF55"
let s:info = "#55FFFF"
let s:hint = "#00FF88"
let s:debug = "#FF00FF"

let s:diff_add = "#003300"
let s:diff_add_fg = "#00FF00"
let s:diff_del = "#330000"
let s:diff_del_fg = "#FF5555"
let s:diff_chg = "#000033"

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
exec "highlight IncSearch guifg=" . s:bg . " guibg=" . s:accent
exec "highlight CurSearch guifg=" . s:bg . " guibg=" . s:accent
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
exec "highlight PmenuSel guifg=" . s:bg . " guibg=" . s:accent
exec "highlight PmenuSbar guibg=" . s:bg_line
exec "highlight PmenuThumb guibg=" . s:fg_muted
exec "highlight PmenuKind guifg=" . s:func . " guibg=" . s:bg_menu
exec "highlight PmenuKindSel guifg=" . s:bg . " guibg=" . s:accent
exec "highlight PmenuExtra guifg=" . s:fg_dim . " guibg=" . s:bg_menu
exec "highlight PmenuExtraSel guifg=" . s:fg_alt . " guibg=" . s:accent_dim
exec "highlight PmenuMatch guifg=" . s:accent_alt . " gui=bold"
exec "highlight PmenuMatchSel guifg=" . s:fg . " guibg=" . s:accent . " gui=bold"
exec "highlight WildMenu guifg=" . s:bg . " guibg=" . s:accent

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
exec "highlight Conditional guifg=" . s:keyword
exec "highlight Repeat guifg=" . s:keyword
exec "highlight Label guifg=" . s:keyword
exec "highlight Operator guifg=" . s:operator
exec "highlight Keyword guifg=" . s:keyword
exec "highlight Exception guifg=" . s:keyword
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
exec "highlight TelescopeSelection guifg=" . s:bg . " guibg=" . s:accent
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
