#!/bin/bash

# Update tlmgr
tlmgr update --self

# Read the latex_requirements.txt file and install each package
while IFS= read -r package
do
  tlmgr install "$package"
done < latex_requirements.txt