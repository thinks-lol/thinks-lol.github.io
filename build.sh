#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <output-file>"
    echo "Example: $0 index.html"
    exit 1
fi

OUTPUT_FILE="$1"

pandoc intro.md -o intro.html && awk '/the.content/ {system("cat intro.html"); next}1' index.template.html > "$OUTPUT_FILE"
