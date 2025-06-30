# WP2 Report --- LaTeX files

This section of the WP2 repository contains the LaTeX source files for generating a PDF document of the report.

The report is hosted on a gitpage [here](https://futuram-project.github.io/FutuRaM.github.io/WP2/WP2_scenarios.html).

## Dependencies

- **TeX Live**: This is a TeX distribution that includes all the standard LaTeX tools, as well as many additional packages. You can download it from the [TeX Live website](https://www.tug.org/texlive/). After installing TeX Live, you can manage your LaTeX packages with `tlmgr`, the TeX Live package manager.

- **latexmk**: This is a Perl script that automates the process of compiling LaTeX documents. It's included with TeX Live, so if you've installed TeX Live, you should already have `latexmk`.

## Compiling the Document

To compile the document, first run `install_requirements.sh` to install the latex packages with tlmgr.

Then run `build_report.sh` to compile the document with latexmk.
If there are errors, you can go to the `latex_files` directory and run `latexmk -C FutuRaMa_WP2_FutureScenarios_Report.tex`, then run `build_report.sh` again.

The compiled PDF will be in the `latex_files` directory, also copied to the root directory.

If you have the correct permissions, the `build_report.sh` script can update the github repository with the compiled PDF, and also the repository for the website where the report is hosted.

## Editing the Document

The main LaTeX file is `FutuRaMa_WP2_FutureScenarios_Report.tex`. This file sets the formatting and will pull in the other files that are needed to compile the document. Most probably, you would only need to edit the files in the `chapters`, `assets`, or `csvs` directories.

- `latex_files`
  - `assets`: This directory contains various assets used in the document, such as images and logos.
  - `chapters`: This directory contains the LaTeX source files for each chapter or section of the document.
    - `000frontmatter.tex` to `202appendices.tex`: The LaTeX source files for the corresponding chapters. Each file has a corresponding folder containing the .tex files for the sections.

  - `csvs`: This directory contains CSV files, for tables in the document.
  - `FutuRaMa_WP2_FutureScenarios_Report.tex`: The main LaTeX file for the document.
  - `scratch`: This directory contains temporary files like the preface for the draft version and a scratch.tex for putting random things.
- `literature`
  - contains pdfs for many of the documents cited in the report.
  - the bibliography is in bibtex format and can be found in `latex_files/chapters/201references/references.bib`
