#' \documentclass{ltjsarticle}
#' \pagestyle{empty}
#' \title{\textbf{spin}によるPDFレポート生成}
#' \author{@kohske}
#' \begin{document}
#' \maketitle
#'
#' \section{irisの雰囲気}
#' チャンクオプションを指定して表を出力してみます。\vspace{1em}
#+ results="asis", echo=FALSE
kable(iris[1:3, ])

# /*
# ここからレポート出力されません。
print("早く帰ってビール飲みたい")
print("解析なんてやってられない")
# ここまで出力されません。
# */

#' \section{irisの中身}
#' \begin{itemize}
#' \item irisデータの行数と列数は
{{dim(iris)}}
#' です。
#' \item irisは「イリス」ではなく「アイリス」です。
#' \item 長さと幅の相関を調べてみます。
#' \end{itemize}
cor(iris[, 1:4])

#' \end{document}
