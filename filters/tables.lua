function Table(elem)
    local simple = pandoc.utils.to_simple_table(elem)
    local header = simple.header
    local rows = simple.rows
    local cols = #header > 0 and #header or (#rows[1] or 0)
    if cols == 0 then
        return elem
    end

    local col_types = {}
    for i, h in ipairs(header) do
        local colname = pandoc.utils.stringify(h)
        if colname == "Description" then
            table.insert(col_types, "p{0.23\\linewidth}")
        elseif colname == "Special Effect / Use" then
            table.insert(col_types, "p{0.27\\linewidth}")
        else
            table.insert(col_types, "L")
        end
    end
    local tabular_cols = table.concat(col_types, "")

    local latex = "\\vspace{0.5em}\n"
    latex = latex .. "{\\scriptsize\n"
    latex = latex .. "\\begin{center}\n"
    latex = latex .. "\\renewcommand{\\arraystretch}{1.25}\n"
    latex = latex .. "\\begin{tabulary}{\\linewidth}{" .. tabular_cols .. "}\n"
    if #header > 0 then
        latex = latex .. "\\rowcolor{tableheaderbg}"
        for i, h in ipairs(header) do
            latex = latex .. "{\\color{white}\\textbf{" .. pandoc.utils.stringify(h) .. "}}"
            if i < cols then
                latex = latex .. " & "
            else
                latex = latex .. " \\\\\n"
            end
        end
    end
    for row_index, row in ipairs(rows) do
        if row_index % 2 == 0 then
            latex = latex .. "\\rowcolor{tablerow}"
        end
        for i, cell in ipairs(row) do
            local cell_content = pandoc.utils.stringify(cell):gsub("\n", "\\newline ")
            latex = latex .. cell_content
            if i < cols then
                latex = latex .. " & "
            else
                latex = latex .. " \\\\\n"
            end
        end
    end
    latex = latex .. "\\end{tabulary}\n"
    latex = latex .. "\\end{center}\n"
    latex = latex .. "}\n"
    latex = latex .. "\\vspace{1em}\n"

    return pandoc.RawBlock('latex', latex)
end
