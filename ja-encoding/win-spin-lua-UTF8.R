#' \documentclass{ltjsarticle}
#' \pagestyle{empty}
#' \begin{document}
#' \section*{spinで日本語}
#'
#+ highlight=FALSE
a <- "日本語。。。"
paste(rep(a, 4), collapse=" ")

#'
#+
a <- "じぇ・・"
paste(rep(a, 4), collapse=" ")
#' \end{document}
