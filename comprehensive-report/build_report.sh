#!/bin/bash
dir=$PWD

cd latex_files
# Define filename variable
FILENAME="FutuRaMa_WP2_FutureScenarios_Report"
UPDATE_GH=True # will only work if you have the FutuRaM.github.io repository cloned in ~/code/gh/futuram/FutuRaM.github.io/

# Create the output directory if it doesn't exist
mkdir -p output

# Build LaTeX document
latexmk -pdf -outdir=output -f $FILENAME.tex

# Check if build was successful
if [ $? -eq 0 ]; then
  # Copy PDF to parent directory
  cp output/$FILENAME.pdf ../

  if [ $UPDATE_GH = True ]; then
    cp output/$FILENAME.pdf ~/code/gh/futuram/FutuRaM.github.io/WP2/
    # Git operations for first repository (the WP2 repository)
    cd $(git rev-parse --show-toplevel)
    git add .
    git commit -m "update"
    git push

    # Git operations for second repository (the website)
    cd ~/code/gh/futuram/FutuRaM.github.io/
    git add .
    git commit -m "update"
    git push
  fi

else
  echo "Build failed, not proceeding with copy and git operations. Try to fix the LaTeX errors and run this script again."

fi
