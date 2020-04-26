#!/bin/bash
FILE="$1"
du -h "$1"
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPrinted=false -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$FILE"_small.pdf "$FILE"
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPrinted=false -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$FILE"_micro.pdf "$FILE"
echo "done compress"  
du -h "$FILE"_small.pdf 
du -h  "$FILE"_micro.pdf