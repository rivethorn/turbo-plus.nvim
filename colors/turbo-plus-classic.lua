-- A faithful recreation of the original Turbo C++ colorscheme for Neovim,
-- with enhanced syntax highlighting for modern editors.

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "turbo-plus-classic"

-- Configuration option for background variant
-- Set vim.g.turbo_plus_classic_use_original_blue = true to use the original blue background
local use_original_blue = vim.g.turbo_plus_classic_use_original_blue or false

local p = {
	-- Classic Turbo C++ backgrounds (authentic deep blue)
	bg = use_original_blue and "#000033" or "#000020", -- original blue: #000033, softer: #000020
	bg_alt = use_original_blue and "#000044" or "#000030",
	bg_menu = use_original_blue and "#000055" or "#000040",
	bg_line = use_original_blue and "#001155" or "#001050",
	bg_widget = use_original_blue and "#001144" or "#001040",
	bg_select = use_original_blue and "#002288" or "#002080",
	bg_match = use_original_blue and "#00228890" or "#00208090",
	border = "#0000AA",
	border_alt = "#0000CC",

	-- Foregrounds (authentic Turbo C++ white/cyan)
	fg = "#FFFFFF", -- main text (pure white)
	fg_alt = "#FFFF55", -- bright yellow accents
	fg_dim = "#AAAAAA",
	fg_muted = "#555555",
	white = "#FFFFFF",

	-- Classic Turbo C++ accents (bright cyan/yellow)
	accent = "#00FFFF", -- bright cyan
	accent_dim = "#0088FF",
	accent_alt = "#00FFFF",

	-- Syntax (authentic Turbo C++ style: yellow keywords, cyan strings, enhanced)
	comment = "#008080", -- teal for comments
	string = "#00FF00", -- bright green strings
	regex = "#00FF00",
	number = "#FFFF00", -- bright yellow numbers
	keyword = "#FFFF00", -- classic yellow keywords
	func = "#00FFFF", -- bright cyan functions
	type = "#00FF00", -- bright green types
	variable = "#FFFFFF",
	constant = "#FFFF00",
	operator = "#FFFF00",
	preproc = "#FF8800", -- orange for preprocessor
	annotation = "#FF8800",
	param = "#FFFF00",
	member = "#00FFFF",
	tag = "#00FF00",
	attr = "#FFFF00",
	module = "#00FF00",
	macro = "#FF8800",

	-- Diagnostics / status (bright)
	err = "#FF5555",
	warn = "#FFFF55",
	info = "#55FFFF",
	hint = "#00FF88",
	debug = "#FF00FF",

	-- Diff
	diff_add = "#003300",
	diff_add_fg = "#00FF00",
	diff_del = "#330000",
	diff_del_fg = "#FF5555",
	diff_chg = "#000033",
}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Editor / UI
hl("Normal", { fg = p.fg, bg = p.bg })
hl("NormalNC", { fg = p.fg, bg = p.bg })
hl("NormalFloat", { fg = p.fg, bg = p.bg_menu })
hl("FloatBorder", { fg = p.border_alt, bg = p.bg_menu })
hl("FloatTitle", { fg = p.fg_alt, bg = p.bg_menu, bold = true })
hl("NonText", { fg = p.fg_muted })
hl("EndOfBuffer", { fg = p.bg })
hl("Whitespace", { fg = p.fg_muted })
hl("SpecialKey", { fg = p.fg_muted })
hl("Conceal", { fg = p.fg_dim })
hl("Cursor", { fg = p.bg, bg = p.fg })
hl("CursorLine", { bg = p.bg_line })
hl("CursorColumn", { bg = p.bg_line })
hl("ColorColumn", { bg = p.bg_line })
hl("LineNr", { fg = p.fg_muted })
hl("CursorLineNr", { fg = p.fg_alt, bold = true })
hl("SignColumn", { bg = p.bg })
hl("FoldColumn", { fg = p.fg_muted, bg = p.bg })
hl("Folded", { fg = p.fg_dim, bg = p.bg_line })
hl("Visual", { bg = p.bg_select })
hl("VisualNOS", { bg = p.bg_select })
hl("Search", { fg = p.fg, bg = p.bg_select })
hl("IncSearch", { fg = p.bg, bg = p.accent })
hl("CurSearch", { fg = p.bg, bg = p.accent })
hl("MatchParen", { fg = p.accent_alt, bold = true, underline = true })
hl("StatusLine", { fg = p.fg_dim, bg = p.bg_alt })
hl("StatusLineNC", { fg = p.fg_muted, bg = p.bg_alt })
hl("WinSeparator", { fg = p.border, bg = p.bg })
hl("VertSplit", { fg = p.border, bg = p.bg })
hl("TabLine", { fg = p.fg_dim, bg = p.bg_alt })
hl("TabLineFill", { bg = p.bg_alt })
hl("TabLineSel", { fg = p.fg_alt, bg = p.bg, sp = p.accent, underline = true })

-- Popup menus / completion
hl("Pmenu", { fg = p.fg, bg = p.bg_menu })
hl("PmenuSel", { fg = p.bg, bg = p.accent })
hl("PmenuSbar", { bg = p.bg_line })
hl("PmenuThumb", { bg = p.fg_muted })
hl("PmenuKind", { fg = p.func, bg = p.bg_menu })
hl("PmenuKindSel", { fg = p.bg, bg = p.accent })
hl("PmenuExtra", { fg = p.fg_dim, bg = p.bg_menu })
hl("PmenuExtraSel", { fg = p.fg_alt, bg = p.accent_dim })
hl("PmenuMatch", { fg = p.accent_alt, bold = true })
hl("PmenuMatchSel", { fg = p.fg, bg = p.accent, bold = true })
hl("WildMenu", { fg = p.bg, bg = p.accent })

-- Messages
hl("ErrorMsg", { fg = p.err })
hl("WarningMsg", { fg = p.warn })
hl("ModeMsg", { fg = p.fg_alt, bold = true })
hl("MoreMsg", { fg = p.accent })
hl("Question", { fg = p.accent })
hl("Title", { fg = p.keyword, bold = true })
hl("Directory", { fg = p.accent_alt })

-- Syntax (legacy groups)
hl("Comment", { fg = p.comment })
hl("String", { fg = p.string })
hl("Character", { fg = p.string })
hl("Number", { fg = p.number })
hl("Boolean", { fg = p.constant })
hl("Float", { fg = p.number })
hl("Identifier", { fg = p.variable })
hl("Function", { fg = p.func })
hl("Statement", { fg = p.keyword })
hl("Conditional", { fg = p.keyword })
hl("Repeat", { fg = p.keyword })
hl("Label", { fg = p.keyword })
hl("Operator", { fg = p.operator })
hl("Keyword", { fg = p.keyword })
hl("Exception", { fg = p.keyword })
hl("PreProc", { fg = p.preproc })
hl("Include", { fg = p.preproc })
hl("Define", { fg = p.preproc })
hl("Macro", { fg = p.macro })
hl("PreCondit", { fg = p.preproc })
hl("Type", { fg = p.type })
hl("StorageClass", { fg = p.keyword })
hl("Structure", { fg = p.type })
hl("Typedef", { fg = p.type })
hl("Special", { fg = p.annotation })
hl("SpecialChar", { fg = p.regex })
hl("Tag", { fg = p.tag })
hl("Delimiter", { fg = p.fg })
hl("SpecialComment", { fg = p.comment })
hl("Debug", { fg = p.debug })
hl("Underlined", { underline = true })
hl("Error", { fg = p.err })
hl("Todo", { fg = p.warn, bold = true })

-- Treesitter (enhanced syntax highlighting)
hl("@comment", { link = "Comment" })
hl("@comment.documentation", { fg = p.comment })
hl("@comment.todo", { link = "Todo" })
hl("@comment.error", { fg = p.err, bold = true })
hl("@comment.warning", { fg = p.warn, bold = true })
hl("@comment.note", { fg = p.info, bold = true })
hl("@string", { link = "String" })
hl("@string.escape", { fg = p.preproc, bold = true })
hl("@string.regexp", { fg = p.regex })
hl("@string.special", { fg = p.annotation })
hl("@character", { link = "Character" })
hl("@number", { link = "Number" })
hl("@boolean", { link = "Boolean" })
hl("@float", { link = "Float" })
hl("@constant", { fg = p.constant, bold = true })
hl("@constant.builtin", { fg = p.constant, bold = true })
hl("@constant.macro", { fg = p.preproc, bold = true })
hl("@variable", { fg = p.variable })
hl("@variable.builtin", { fg = p.keyword, bold = true })
hl("@variable.parameter", { fg = p.param })
hl("@variable.member", { fg = p.member })
hl("@property", { fg = p.member })
hl("@field", { fg = p.member })
hl("@function", { fg = p.func, bold = true })
hl("@function.builtin", { fg = p.func, bold = true })
hl("@function.call", { fg = p.func })
hl("@function.macro", { fg = p.macro, bold = true })
hl("@function.method", { fg = p.func, bold = true })
hl("@function.method.call", { fg = p.func })
hl("@constructor", { fg = p.type, bold = true })
hl("@keyword", { link = "Keyword" })
hl("@keyword.function", { fg = p.keyword, bold = true })
hl("@keyword.return", { fg = p.keyword, bold = true })
hl("@keyword.conditional", { fg = p.keyword, bold = true })
hl("@keyword.repeat", { fg = p.keyword, bold = true })
hl("@keyword.import", { fg = p.preproc, bold = true })
hl("@keyword.exception", { fg = p.keyword, bold = true })
hl("@keyword.operator", { fg = p.keyword, bold = true })
hl("@operator", { link = "Operator" })
hl("@type", { link = "Type" })
hl("@type.builtin", { fg = p.keyword, bold = true })
hl("@type.definition", { fg = p.type, bold = true })
hl("@type.qualifier", { fg = p.keyword, bold = true })
hl("@attribute", { fg = p.annotation, bold = true })
hl("@module", { fg = p.module, bold = true })
hl("@namespace", { fg = p.module, bold = true })
hl("@punctuation", { fg = p.fg })
hl("@punctuation.bracket", { fg = p.fg })
hl("@punctuation.delimiter", { fg = p.fg })
hl("@punctuation.special", { fg = p.keyword })
hl("@tag", { fg = p.tag, bold = true })
hl("@tag.builtin", { fg = p.tag, bold = true })
hl("@tag.attribute", { fg = p.attr })
hl("@tag.delimiter", { fg = p.fg_dim })
hl("@markup.heading", { fg = p.keyword, bold = true })
hl("@markup.strong", { fg = p.fg, bold = true })
hl("@markup.italic", { fg = p.preproc, italic = true })
hl("@markup.underline", { underline = true })
hl("@markup.strikethrough", { strikethrough = true })
hl("@markup.link", { fg = p.accent_alt, underline = true })
hl("@markup.link.label", { fg = p.string })
hl("@markup.link.url", { fg = p.accent_alt, underline = true })
hl("@markup.list", { fg = p.keyword })
hl("@markup.quote", { fg = p.comment })
hl("@markup.raw", { fg = p.string })
hl("@markup.raw.block", { fg = p.fg, bg = p.bg_line })

-- LSP semantic tokens
hl("@lsp.type.class", { link = "@type" })
hl("@lsp.type.enum", { link = "@type" })
hl("@lsp.type.interface", { link = "@type" })
hl("@lsp.type.struct", { link = "@type" })
hl("@lsp.type.type", { link = "@type" })
hl("@lsp.type.parameter", { link = "@variable.parameter" })
hl("@lsp.type.variable", { link = "@variable" })
hl("@lsp.type.property", { link = "@property" })
hl("@lsp.type.function", { link = "@function" })
hl("@lsp.type.method", { link = "@function.method" })
hl("@lsp.type.macro", { link = "@function.macro" })
hl("@lsp.type.namespace", { link = "@namespace" })
hl("@lsp.type.enumMember", { fg = p.constant, bold = true })
hl("@lsp.typemod.variable.readonly", { link = "@constant" })
hl("@lsp.type.const", { fg = p.constant, bold = true })
hl("@lsp.typemod.const.static", { fg = p.constant, bold = true })
hl("@lsp.typemod.const.constant", { fg = p.constant, bold = true })
hl("@lsp.type.const.rust", { fg = p.constant, bold = true })
hl("@lsp.type.macro", { fg = p.macro, bold = true })

-- Diagnostics
hl("DiagnosticError", { fg = p.err })
hl("DiagnosticWarn", { fg = p.warn })
hl("DiagnosticInfo", { fg = p.info })
hl("DiagnosticHint", { fg = p.hint })
hl("DiagnosticUnderlineError", { undercurl = true, sp = p.err })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = p.warn })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = p.info })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = p.hint })
hl("DiagnosticVirtualTextError", { fg = p.err, bg = p.bg })
hl("DiagnosticVirtualTextWarn", { fg = p.warn, bg = p.bg })
hl("DiagnosticVirtualTextInfo", { fg = p.info, bg = p.bg })
hl("DiagnosticVirtualTextHint", { fg = p.hint, bg = p.bg })

-- Diff / git
hl("DiffAdd", { bg = p.diff_add })
hl("DiffChange", { bg = p.diff_chg })
hl("DiffDelete", { fg = p.diff_del_fg, bg = p.diff_del })
hl("DiffText", { bg = p.diff_chg, bold = true })
hl("GitSignsAdd", { fg = p.diff_add_fg })
hl("GitSignsChange", { fg = p.warn })
hl("GitSignsDelete", { fg = p.diff_del_fg })

-- Telescope / Snacks picker
hl("TelescopeBorder", { fg = p.border, bg = p.bg_menu })
hl("TelescopeNormal", { fg = p.fg, bg = p.bg_menu })
hl("TelescopeSelection", { fg = p.bg, bg = p.accent })
hl("TelescopeMatching", { fg = p.accent_alt, bold = true })
hl("TelescopePromptPrefix", { fg = p.accent })
hl("SnacksPickerBorder", { fg = p.border, bg = p.bg_menu })
hl("SnacksPickerNormal", { fg = p.fg, bg = p.bg_menu })
hl("SnacksPickerListCursorLine", { bg = p.accent_dim })
hl("SnacksPickerInputBorder", { fg = p.accent_dim, bg = p.bg_menu })
hl("SnacksPickerMatch", { fg = p.accent_alt, bold = true })

-- blink.cmp
hl("BlinkCmpMenu", { link = "Pmenu" })
hl("BlinkCmpMenuBorder", { fg = p.border_alt, bg = p.bg_menu })
hl("BlinkCmpMenuSelection", { link = "PmenuSel" })
hl("BlinkCmpScrollBarThumb", { link = "PmenuThumb" })
hl("BlinkCmpScrollBarGutter", { link = "PmenuSbar" })
hl("BlinkCmpLabel", { fg = p.fg })
hl("BlinkCmpLabelMatch", { fg = p.accent_alt, bold = true })
hl("BlinkCmpLabelDeprecated", { fg = p.fg_muted, strikethrough = true })
hl("BlinkCmpLabelDetail", { fg = p.fg_dim })
hl("BlinkCmpLabelDescription", { fg = p.fg_dim })
hl("BlinkCmpSource", { fg = p.fg_dim })
hl("BlinkCmpDoc", { link = "NormalFloat" })
hl("BlinkCmpDocBorder", { fg = p.border_alt, bg = p.bg_menu })

-- Bufferline
hl("BufferLineFill", { bg = p.bg_alt })
hl("BufferLineBackground", { fg = p.fg_dim, bg = p.bg_alt })
hl("BufferLineBufferSelected", { fg = p.fg_alt, bg = p.bg, bold = true })
hl("BufferLineIndicatorSelected", { fg = p.accent, bg = p.bg })

-- Notify / which-key
hl("WhichKey", { fg = p.keyword })
hl("WhichKeyGroup", { fg = p.func })
hl("WhichKeyDesc", { fg = p.fg })
hl("WhichKeySeparator", { fg = p.fg_dim })
hl("WhichKeyFloat", { bg = p.bg_menu })
