# windowsでのレポート生成のコマンド例

## Rマークダウン -> HTML (knit2html)

### CP932

knit2html("win-CP932.Rmd")

### UTF8

knit2html("win-UTF8.Rmd", encoding="UTF8")

## Rスクリプト -> HTML (spin)

### CP932

spin("win-spin-rmd-CP932.R")

### UTF8

o <- spin(file("win-spin-rmd-UTF8.R", encoding="UTF8"), knit=FALSE)
file.rename(o, "win-spin-rmd-UTF8.Rmd")
knit2html("win-spin-rmd-UTF8.Rmd")

## Rスクリプト -> HTML (stitch)

### CP932

stitch("win-stitch-CP932.R", "win-stitch-tmpl-CP932.Rmd")

### UTF8

o1 <- tempfile()
o2 <- tempfile()
writeLines(readLines(file("win-stitch-UTF8.R", encoding="UTF8")), o1)
writeLines(readLines(file("win-stitch-tmpl-UTF8.Rmd", encoding="UTF8")), o2)
stitch(o1, o2, "win-stitch-UTF8.md")

## Rnoweb -> PDF (knit2pdf) (LuaLatex)

### UTF8

knit2pdf("win-lua-UTF8.Rnw", encoding="UTF8", compiler="lualatex")

## Rnoweb -> PDF (knit2pdf) (pLaTeX)

### CP932

knit("win-platex-CP932.Rnw")
system('ptex2pdf -l -ot "-kanji=sjis" win-platex-CP932')

### UTF8

knit("win-platex-UTF8.Rnw", encoding="utf8")
system('ptex2pdf -l -ot "-kanji=utf8" win-platex-UTF8')

## Rスクリプト -> PDF (spin) (LuaLaTeX)

### UTF8

o1 <- spin(file("win-spin-lua-UTF8.R", encoding="UTF8"), format="Rnw", knit=FALSE)
file.rename(o1, "win-spin-lua-UTF8.Rnw")
o2 <- tempfile()
writeLines(readLines("win-spin-lua-UTF8.Rnw"), file(o2, encoding="UTF8"))
knit2pdf(o2, "win-spin-lua-UTF8.tex", encoding="UTF8", compiler="lualatex")

## Rスクリプト -> PDF (spin) (pLaTeX)

### CP932

spin("win-spin-platex-CP932.R", format="Rnw", knit=FALSE)
knit("win-spin-platex-CP932.Rnw")
system('ptex2pdf -l -ot "-kanji=sjis" win-spin-platex-CP932')

### UTF8

o1 <- spin(file("win-spin-platex-UTF8.R", encoding="UTF8"), format="Rnw", knit=FALSE)
file.rename(o1, "win-spin-platex-UTF8.Rnw")
o2 <- tempfile()
writeLines(readLines("win-spin-platex-UTF8.Rnw"), file(o2, encoding="UTF8"))
knit(o2, "win-spin-platex-UTF8.tex", encoding="utf8")
system('ptex2pdf -l -ot "-kanji=utf8" win-spin-platex-UTF8')

## Rスクリプト -> PDF (stitch) (LuaLaTeX)

### UTF8

o1 <- tempfile()
o2 <- tempfile()
o3 <- tempfile()
writeLines(readLines(file("win-stitch-UTF8.R", encoding="UTF8")), o1)
writeLines(readLines(file("win-stitch-tmpl-lua-UTF8.Rnw", encoding="UTF8")), o2)
stitch(o1, o2, o3)
writeLines(readLines(o3), file("win-stitch-lua-UTF8.tex", encoding="UTF8"))
tools::texi2pdf("win-stitch-lua-UTF8", texi2dvi="lualatex")

## Rスクリプト -> PDF (stitch) (pLaTeX)

### CP932

o3 <- tempfile()
stitch("win-stitch-CP932.R", "win-stitch-tmpl-platex-CP932.Rnw", o3)
writeLines(readLines(o3), "win-stitch-platex-CP932.tex")
system('ptex2pdf -l -ot "-kanji=sjis" win-stitch-platex-CP932')

### UTF8

o1 <- tempfile()
o2 <- tempfile()
o3 <- tempfile()
writeLines(readLines(file("win-stitch-UTF8.R", encoding="UTF8")), o1)
writeLines(readLines(file("win-stitch-tmpl-platex-UTF8.Rnw", encoding="UTF8")), o2)
stitch(o1, o2, o3)
writeLines(readLines(o3), file("win-stitch-platex-UTF8.tex", encoding="UTF8"))
system('ptex2pdf -l -ot "-kanji=utf8" win-stitch-platex-UTF8')

