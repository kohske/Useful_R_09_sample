shinyUI(fluidPage(
  # 1行目
  fluidRow(plotOutput("p1")),
  # 2行目
  fluidRow(
    # 1列目
    column(8, verbatimTextOutput("v1")),
    # 2列目
    column(4, wellPanel(
      sliderInput("s1", "サンプルサイズ", min = 0, max = 10000, 
                  value = 100, step = 10)))
  )
))
