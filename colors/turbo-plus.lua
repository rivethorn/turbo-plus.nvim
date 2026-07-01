-- A modern, softer take on Turbo C++ colorscheme for Neovim.

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "turbo-plus"

local p = {
	-- Backgrounds (Turbo C++ inspired dark blue tones, softened)
	bg = "#0A1428", -- main editor bg (softer deep blue)
	bg_alt = "#0F1B33", -- sidebar / status / panel
	bg_menu = "#13233F", -- menus / popups
	bg_line = "#1A2A4A", -- cursorline / selections
	bg_widget = "#1F3255",
	bg_select = "#2A4A7A", -- selection
	bg_match = "#2A4A7A90",
	border = "#334F7F",
	border_alt = "#4A6A9F",

	-- Foregrounds
	fg = "#E0E0E0", -- main text (soft white)
	fg_alt = "#F0F0B0", -- bright accents (yellowish)
	fg_dim = "#A0A8B8",
	fg_muted = "#6A7A9A",
	white = "#FFFFFF",

	-- Turbo-inspired accents (cyan/blue/yellow)
	accent = "#40C0FF", -- bright cyan/blue
	accent_dim = "#2098D8",
	accent_alt = "#60D0FF",

	-- Syntax (Turbo C++ style: yellow keywords, cyan strings/comments, etc., softened)
	comment = "#70B0A0", -- teal-ish for comments
	string = "#A0E0B0", -- soft green/cyan strings
	regex = "#A0E0B0",
	number = "#B0C0FF",
	keyword = "#F0E070", -- classic yellow keywords (softened)
	func = "#D0B0FF", -- purple-ish functions
	type = "#70E0C0", -- teal types
	variable = "#E0E0E0",
	constant = "#B0C0FF",
	operator = "#F0E070",
	preproc = "#F0A070", -- orange-ish for preprocessor
	annotation = "#F0C070",
	param = "#F0C070",
	member = "#B0C0FF",
	tag = "#A0E0B0",
	attr = "#B0C0FF",
	module = "#70E0C0",
	macro = "#40B0E0",

	-- Diagnostics / status
	err = "#FF7070",
	warn = "#FFD070",
	info = "#70B0FF",
	hint = "#40C0A0",
	debug = "#C080FF",

	-- Diff
	diff_add = "#1A3A2A",
	diff_add_fg = "#80E0A0",
	diff_del = "#3A1A1A",
	diff_del_fg = "#FF9090",
	diff_chg = "#2A2A4A",
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
hl("IncSearch", { fg = p.white, bg = p.accent })
hl("CurSearch", { fg = p.white, bg = p.accent })
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
hl("PmenuSel", { fg = p.fg_alt, bg = p.accent_dim })
hl("PmenuSbar", { bg = p.bg_line })
hl("PmenuThumb", { bg = p.fg_muted })
hl("PmenuKind", { fg = p.func, bg = p.bg_menu })
hl("PmenuKindSel", { fg = p.func, bg = p.accent_dim })
hl("PmenuExtra", { fg = p.fg_dim, bg = p.bg_menu })
hl("PmenuExtraSel", { fg = p.fg_alt, bg = p.accent_dim })
hl("PmenuMatch", { fg = p.accent_alt, bold = true })
hl("PmenuMatchSel", { fg = p.accent_alt, bg = p.accent_dim, bold = true })
hl("WildMenu", { fg = p.fg_alt, bg = p.accent_dim })

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
hl("Conditional", { fg = p.preproc })
hl("Repeat", { fg = p.preproc })
hl("Label", { fg = p.keyword })
hl("Operator", { fg = p.operator })
hl("Keyword", { fg = p.keyword })
hl("Exception", { fg = p.preproc })
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

-- Treesitter
hl("@comment", { link = "Comment" })
hl("@comment.documentation", { fg = p.comment })
hl("@comment.todo", { link = "Todo" })
hl("@comment.error", { fg = p.err, bold = true })
hl("@comment.warning", { fg = p.warn, bold = true })
hl("@comment.note", { fg = p.info, bold = true })
hl("@string", { link = "String" })
hl("@string.escape", { fg = p.keyword })
hl("@string.regexp", { fg = p.regex })
hl("@string.special", { fg = p.annotation })
hl("@character", { link = "Character" })
hl("@number", { link = "Number" })
hl("@boolean", { link = "Boolean" })
hl("@float", { link = "Float" })
hl("@constant", { fg = p.constant })
hl("@constant.builtin", { fg = p.constant })
hl("@constant.macro", { fg = p.preproc })
hl("@variable", { fg = p.variable })
hl("@variable.builtin", { fg = p.keyword })
hl("@variable.parameter", { fg = p.param })
hl("@variable.member", { fg = p.member })
hl("@property", { fg = p.member })
hl("@field", { fg = p.member })
hl("@function", { fg = p.func })
hl("@function.builtin", { fg = p.func })
hl("@function.call", { fg = p.func })
hl("@function.macro", { fg = p.macro })
hl("@function.method", { fg = p.func })
hl("@function.method.call", { fg = p.func })
hl("@constructor", { fg = p.type })
hl("@keyword", { link = "Keyword" })
hl("@keyword.function", { fg = p.keyword })
hl("@keyword.return", { fg = p.preproc })
hl("@keyword.conditional", { fg = p.preproc })
hl("@keyword.repeat", { fg = p.preproc })
hl("@keyword.import", { fg = p.preproc })
hl("@keyword.exception", { fg = p.preproc })
hl("@keyword.operator", { fg = p.keyword })
hl("@operator", { link = "Operator" })
hl("@type", { link = "Type" })
hl("@type.builtin", { fg = p.keyword })
hl("@type.definition", { fg = p.type })
hl("@type.qualifier", { fg = p.keyword })
hl("@attribute", { fg = p.annotation })
hl("@module", { fg = p.module })
hl("@namespace", { fg = p.module })
hl("@punctuation", { fg = p.fg })
hl("@punctuation.bracket", { fg = p.fg })
hl("@punctuation.delimiter", { fg = p.fg })
hl("@punctuation.special", { fg = p.keyword })
hl("@tag", { fg = p.tag })
hl("@tag.builtin", { fg = p.tag })
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
hl("@lsp.type.enumMember", { fg = p.constant })
hl("@lsp.typemod.variable.readonly", { link = "@constant" })
hl("@lsp.type.const", { fg = p.constant })
hl("@lsp.typemod.const.static", { fg = p.constant })
hl("@lsp.typemod.const.constant", { fg = p.constant })
hl("@lsp.type.const.rust", { fg = p.constant })
hl("@lsp.type.macro", { fg = p.macro })

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
hl("TelescopeSelection", { fg = p.fg_alt, bg = p.accent_dim })
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
