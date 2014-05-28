shinyUI(bootstrapPage(
  headerPanel("はじめてのShiny!!"),  
  mainPanel(
    h2("正弦波"),
    plotOutput("p"),
    sliderInput("Hz", "周波数", min = 0, max = 4, value = 2, step = 0.1)
  )
))
