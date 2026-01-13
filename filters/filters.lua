require("filters/headers")
require("filters/divs")
require("filters/tables")
require("filters/images")
require("filters/sidebars")

function Div(el)
    -- Try the YAML boxes first (Adversaries/Environments)
    local yaml_result = process_yaml_boxes(el)
    if yaml_result then
        return yaml_result
    end

    -- If that didn't match, try the Markdown boxes (Sidebars/Rules)
    local markdown_result = process_markdown_boxes(el)
    if markdown_result then
        return markdown_result
    end

    -- If no match, return the element unchanged
    return el
end
