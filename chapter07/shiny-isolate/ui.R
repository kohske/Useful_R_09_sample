shinyUI(pageWithSidebar(
  headerPanel("isolateの利用例"),
  
  sidebarPanel(
    textInput("ti", "タイトル", "isolateの利用例"),
    textInput("pch", "プロット記号", "o"),
    sliderInput("xlim", "xlim", 0, 1, c(0, 1), 0.001),
    sliderInput("ylim", "ylim", 0, 1, c(0, 1), 0.001),
    br(), 
    actionButton("goButton", "図を更新")
  ),
  mainPanel(
    plotOutput("p")
  )
))
