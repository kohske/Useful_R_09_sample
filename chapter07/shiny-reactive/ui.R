shinyUI(fluidPage(
  fluidRow(
    h2("データ選択範囲"),
    sliderInput("r", "", min = 1, max = nrow(ggplot2::diamonds), step=1, value = c(1, nrow(ggplot2::diamonds)))
  ),
  fluidRow(
    column(6, h2("概要"), verbatimTextOutput("v")),
    column(6, h2("回帰係数"), plotOutput("p"))
  )
))
