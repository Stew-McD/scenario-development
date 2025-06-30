#!/bin/bash

# Specify the folder containing SVG files
folder=$1

# Loop through SVG files in the folder
for svg_file in "$folder"/*.svg; do
    if [ -f "$svg_file" ]; then
        # Define the output file path with the same name but PDF extension
        pdf_file="${svg_file%.*}.pdf"

        # Use Inkscape to convert SVG to PDF with LaTeX code
        inkscape -z -D --without-gui --export-latex "$svg_file" --export-type="pdf"

        echo "Converted $svg_file to $pdf_file"
    fi
done

echo "Conversion complete."
