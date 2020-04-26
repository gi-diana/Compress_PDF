#!/bin/bash
FILE="$1"
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPrinted=false -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$FILE"_small.pdf "$FILE"
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPrinted=false -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$FILE"_micro.pdf "$FILE"
echo "done compress "$FILE"_small.pdf "$FILE"_micro.pdf"