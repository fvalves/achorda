#!/bin/zsh
rm -rf build
mkdir build
export PATH=$PATH:/Library/TeX/texbin
find . -name "*.tex" -exec pdflatex --output-directory build {} \;
rm build/*.log build/*.aux
