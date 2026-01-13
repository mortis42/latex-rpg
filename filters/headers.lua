-- H6 custom headers filter.
function Header(elem)
    if elem.level == 6 then
        local content = pandoc.utils.stringify(elem.content)
        content = content:gsub("([{}])", "\\%1")
        return pandoc.RawBlock('latex', '\\hypertarget{' .. elem.identifier .. '}{\\hsix{' .. content .. '}\\label{' ..
            elem.identifier .. '}}')
    end
end
