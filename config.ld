file = "./"
project = "PR3R Lua"
title = "PR3R Lua Documentation"
description = "Platform Racing 3 is two-dimensional online racing game. Create your own levels and blocks, or play levels created by other players! Feature rich tools to make your vision come true! Draw amazing art or create unique consepts using different combinations of block types!"
format = "markdown"
output = "index"
dir = "../PR3-Doc/" -- This is relative to working directory from which LDoc is called, NOT the source directory LDoc is reading from
ext = "html"

template = "!"
style = "./"
merge = true
wrap = true
sort_modules = true

custom_display_name_handler = function(item, default_handler)
    return default_handler(item):gsub("^_G%.", ""):gsub("^_G$", "Globals")
end

postprocess_html = function(html, module)
    return html:gsub("%[DEPRECATED%]", "<span class=\"deprecated\">[DEPRECATED]</span>")
end