#!/bin/bash
cd "$(dirname "$0")"

if ! command -v pandoc >/dev/null 2>&1; then
    echo "[ERROR] Pandoc is not installed or it is not in the PATH."
    echo "Install Pandoc from https://pandoc.org/installing.html"
    exit 1
fi

echo -n "Generating pdf"
pandoc main.md --syntax-highlighting=none --template=tex/template.tex --pdf-engine=xelatex --filter pandoc-latex-environment --lua-filter=filters/filters.lua -o output/main.pdf 2>/dev/null &
pid=$!

while kill -0 $pid 2>/dev/null; do
    echo -n "."
    sleep 0.5
done

wait $pid
status=$?

if [ $status -ne 0 ]; then
    echo
    echo "[ERROR] There was a problem generating the PDF."
    exit 1
fi

echo
echo "PDF successfully generated in output/main.pdf"
