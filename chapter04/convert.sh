#!/bin/bash

# ================
# HTML

# .Rhtml -> html
Rscript -e "knitr::knit('minimal-html.Rhtml')"

# ================
# reST

# .Rrst -> .rst
Rscript -e "knitr::knit('minimal-rst.Rrst')"

# .rst -> html
rst2html.py minimal-rst.rst > minimal-rst.html
# .rst -> xetex (日本語用) -> pdf
rst2xetex.py minimal-rst.rst --latex-preamble=\\setmainfont{IPA明朝} > minimal-rst.tex
xelatex minimal-rst.tex
# .rst -> odt
rst2odt.py minimal-rst.rst > minimal-rst.odt

# ================
# AsciiDoc

# .Rascidoc -> .txt
Rscript -e "knitr::knit('minimal-asciidoc.Rasciidoc')"

# .txt -> html
asciidoc minimal-asciidoc.txt


# ================
# Textile

# .Rtextile -> .txt
Rscript -e "knitr::knit('minimal-textile.Rtextile')"

# .txt -> html
pandoc -s minimal-textile.textile -f textile -t html -o minimal-textile.html


