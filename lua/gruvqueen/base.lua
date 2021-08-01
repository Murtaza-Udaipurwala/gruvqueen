local base = {
    Normal = {fg = C.fg0, bg = Config.transparent_background and "NONE" or Config.bg_color, },
    Terminal = {fg = C.fg0, bg = C.bg0, },
    Folded = {fg = C.grey1, bg = C.bg2, },
    SignColumn = {fg = C.fg0, bg = C.bg2, },
    FoldColumn = {fg = C.grey1, bg = C.bg2, },
    IncSearch = {fg = C.bg0, bg = C.bg_red, },
    Search = {fg = C.bg0, bg = C.bg_green, },
    ColorColumn = {fg = C.none, bg = C.bg2, },
    Conceal = {fg = C.bg5, bg = C.none, },
    DiffAdd = {fg = C.none, bg = C.bg_diff_green, },
    DiffChange = {fg = C.none, bg = C.bg_diff_blue, },
    DiffDelete = {fg = C.none, bg = C.bg_diff_red, },
    DiffText = {fg = C.bg0, bg = C.blue, },
    Directory = {fg = C.green, bg = C.none, },
    ErrorMsg = {fg = C.red, bg = C.none, style = "bold,underline", },
    WarningMsg = {fg = C.yellow, bg = C.none, style = "bold", },
    ModeMsg = {fg = C.fg0, bg = C.none, style = "bold", },
    MoreMsg = {fg = C.yellow, bg = C.none, style = "bold", },
    MatchParen = {fg = C.orange, bg = C.none, style = "bold" },
    NonText = {fg = C.bg5, bg = C.none, },
    Whitespace = {fg = C.bg5, bg = C.none, },
    SpecialKey = {fg = C.bg5, bg = C.none, },
    Pmenu = {fg = C.fg1, bg = C.menu_grey, },
    PmenuSel = {fg = C.menu_grey, bg = C.blue, },
    PmenuSbar = {fg = C.menu_grey, bg = C.menu_grey, },
    PmenuThumb = {fg = C.blue, bg = C.menu_grey, },
    NormalFloat = {fg = C.fg1, bg = C.bg3, },
    Question = {fg = C.yellow, bg = C.none, },
    SpellBad = {fg = C.none, bg = C.none, style = "undercurl", },
    SpellCap = {fg = C.none, bg = C.none, style = "undercurl", },
    SpellLocal = {fg = C.none, bg = C.none, style = "undercurl", },
    SpellRare = {fg = C.none, bg = C.none, style = "undercurl", },
    StatusLine = {fg = C.fg1, bg = C.bg_statusline1, },
    StatusLineTerm = {fg = C.fg1, bg = C.bg_statusline1, },
    StatusLineNC = {fg = C.grey1, bg = C.bg_statusline1, },
    StatusLineTermNC = {fg = C.grey1, bg = C.bg_statusline1, },
    TabLine = {fg = C.fg1, bg = C.bg_statusline3, },
    TabLineFill = {fg = C.fg1, bg = C.bg_statusline1, },
    TabLineSel = {fg = C.bg0, bg = C.grey2, },
    VertSplit = {fg = C.bg5, bg = C.none, },
    Visual = {bg = Config.invert_selection and C.bg0 or C.bg5, style = Config.invert_selection and "inverse" or "NONE", },
    VisualNOS = {bg = Config.invert_selection and C.bg0 or C.bg5, style = Config.invert_selection and "inverse" or "NONE", },
    QuickFixLine = {fg = C.purple, bg = C.none, style = "bold", },
    Debug = {fg = C.orange, bg = C.none, },
    debugPC = {fg = C.bg0, bg = C.green, },
    debugBreakpoint = {fg = C.bg0, bg = C.red, },
    ToolbarButton = {fg = C.bg0, bg = C.grey2, },
    Substitute = {fg = C.bg0, bg = C.yellow, },
    Boolean = {fg = C.purple, bg = C.none, },
    Number = {fg = C.purple, bg = C.none, },
    Float = {fg = C.purple, bg = C.none, },
    PreProc = {fg = C.purple, bg = C.none, style = "italic", },
    PreCondit = {fg = C.purple, bg = C.none, style = "italic", },
    Include = {fg = C.purple, bg = C.none, style = "italic", },
    Define = {fg = C.purple, bg = C.none, style = "italic", },
    Conditional = {fg = C.red, bg = C.none, style = "italic", },
    Repeat = {fg = C.red, bg = C.none, style = "italic", },
    Keyword = {fg = C.red, bg = Config.italic_keywords, style = "italic", },
    Typedef = {fg = C.red, bg = C.none, style = "italic", },
    Exception = {fg = C.red, bg = C.none, style = "italic", },
    Statement = {fg = C.red, bg = C.none, style = "italic", },
    Error = {fg = C.red, bg = C.none, },
    StorageClass = {fg = C.orange, bg = C.none, },
    Tag = {fg = C.orange, bg = C.none, },
    Label = {fg = C.orange, bg = C.none, },
    Structure = {fg = C.orange, bg = C.none, },
    Operator = {fg = C.orange, bg = C.none, },
    Title = {fg = C.orange, bg = C.none, style = "bold", },
    Special = {fg = C.yellow, bg = C.none, },
    SpecialChar = {fg = C.yellow, bg = C.none, },
    Type = {fg = C.yellow, bg = C.none, },
    Function = {fg = C.green, bg = Config.italic_functions, style = "bold", },
    String = {fg = C.green, bg = C.none, },
    Character = {fg = C.green, bg = C.none, },
    Constant = {fg = C.aqua, bg = C.none, },
    Macro = {fg = C.aqua, bg = C.none, },
    Identifier = {fg = C.blue, bg = Config.italic_variables, },
    Comment = {fg = C.grey1, bg = Config.italic_comments, style = "italic", },
    SpecialComment = {fg = C.grey1, bg = C.none, style = "italic", },
    Todo = {fg = C.purple, bg = C.none, style = "italic", },
    Delimiter = {fg = C.fg0, bg = C.none, },
    Ignore = {fg = C.grey1, bg = C.none, },
    Underlined = {fg = C.none, bg = C.none, style = "underline", },
    ErrorText = {fg = C.none, bg = C.bg_visual_red, style = "undercurl", },
    WarningText = {fg = C.none, bg = C.bg_visual_yellow, style = "undercurl", },
    InfoText = {fg = C.none, bg = C.bg_visual_blue, style = "undercurl", },
    HintText = {fg = C.red, bg = C.none, },
    ErrorLine = {fg = C.none, bg = C.bg_visual_red, },
    WarningLine = {fg = C.none, bg = C.bg_visual_yellow, },
    InfoLine = {fg = C.none, bg = C.bg_visual_blue, },
    HintLine = {fg = C.none, bg = C.bg_visual_green, },
    ErrorFloat = {fg = C.red, bg = C.bg3, },
    WarningFloat = {fg = C.yellow, bg = C.bg3, },
    InfoFloat = {fg = C.blue, bg = C.bg3, },
    HintFloat = {fg = C.green, bg = C.bg3, },
    LineNr = {fg = C.bg5, bg = C.none, },
    CursorLineNr = {fg = C.blue, },
    CursorLine = {fg = C.none, bg = C.bg1, },
    CursorColumn = {fg = C.none, bg = C.bg1, },
}

return base