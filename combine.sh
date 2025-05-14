#!/bin/bash

# Set the output file name
output="combined_document.txt"

# Clear the output file if it already exists
> "$output"

# Loop through all .txt files, safely handling spaces
for file in *.txt; do
  echo "Adding: $file"
  echo -e "\n--- $file ---\n" >> "$output"
  cat "$file" >> "$output"
  echo -e "\n" >> "$output"
done

echo "Combined file created: $output"
