function process_markdown_boxes(el)
    local is_sidebar = el.classes:includes('sidebar')
    local is_rules = el.classes:includes('rules')
    local is_tablebox = el.classes:includes('table') -- Added this

    if is_sidebar or is_rules or is_tablebox then
        local title = ""
        local body_content = {}

        -- Map the Markdown class to the LaTeX command name
        local command_name = ""
        if is_sidebar then
            command_name = "sidebar"
        elseif is_rules then
            command_name = "rules"
        elseif is_tablebox then
            command_name = "tablebox"
        end

        for _, block in ipairs(el.content) do
            local text = pandoc.utils.stringify(block)
            if text:match("^title:") then
                title = text:gsub("^title:%s*", ""):gsub("[{}]", "")
            else
                -- Preserve all blocks (including the Table object itself)
                table.insert(body_content, block)
            end
        end

        local res = {pandoc.RawBlock('latex', '\\' .. command_name .. '{' .. title .. '}{')}

        for _, b in ipairs(body_content) do
            table.insert(res, b)
        end

        table.insert(res, pandoc.Plain({pandoc.RawInline('latex', '}')}))

        return res
    end
    return nil
end
