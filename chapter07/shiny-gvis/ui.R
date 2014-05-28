shinyUI(pageWithSidebar(
  headerPanel("Shiny & googleVis!!"),
  sidebarPanel(
    # 入力ポイント(セレクトボックス)
    selectInput("X", "X軸の変数", choices = names(mtcars), selected = "qsec"),
    selectInput("Y", "Y軸の変数", choices = names(mtcars), selected = "mpg"),
    width=3
  ),
  mainPanel(
    # 出力ポイント(googleVisプロット)
    htmlOutput("p"),
    width=9
  )
))
