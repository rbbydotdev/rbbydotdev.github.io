#!/bin/bash

# Prompt the user for the replacement string
read -p "Enter the replacement string: " replacement

# Find and replace the pattern in all .html files without creating backup files
find . -type f -name "*.html" -exec sed -i '' \
	-e "s|https://script.google.com/macros/s/.*/exec|$replacement|g" {} +

echo "Replacement complete."

git add .

git commit -m "update url"

git push origin master
