#!/bin/bash

# code to convert the eps files (transparency not working for pdf, but does for svg)
inkscape --without-gui --actions="export-type:svg;export-do" *.eps
inkscape --without-gui --actions="export-type:pdf;export-do" *.eps
inkscape --without-gui --actions="export-type:png;export-do" *.eps
