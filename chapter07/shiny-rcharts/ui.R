shinyUI(pageWithSidebar(
  headerPanel("Shiny & rCharts!!"),  
  sidebarPanel(
    # 入力ポイント(セレクトボックス)
    selectInput("X", "X軸の変数", choices = names(mtcars), selected = "qsec"),
    selectInput("Y", "Y軸の変数", choices = names(mtcars), selected = "mpg"),
    selectInput("C", "色の変数", choices = names(mtcars), selected = "cyl"),
    width = 3
  ),
  mainPanel(    
    # 出力ポイント(polychartsプロット)
    chartOutput("p", "polycharts"),
    width = 9
  )
))
