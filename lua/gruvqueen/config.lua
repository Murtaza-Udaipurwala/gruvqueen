local config

vim = vim or { g = {}, o = {} }

local function opt(key, default)
    key = "gruvqueen_" .. key
    if vim.g[key] == nil then
        return default
    end
    if vim.g[key] == 0 then
        return false
    end
    return vim.g[key]
end

config = {
    transparent_background = opt("transparent_background", false),
    bg_color = opt("background_color", "#10151a"),
    italic_comments = opt("italic_keywords", true) and "italic" or "NONE",
    italic_keywords = opt("italic_keywords", true) and "italic" or "NONE",
    italic_functions = opt("italic_function", false) and "italic" or "NONE",
    italic_variables = opt("italic_variables", true) and "italic" or "NONE",
    style = opt("style", "material"),
    invert_selection = opt("invert_selection", true),
}

return config