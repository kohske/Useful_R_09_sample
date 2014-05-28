shinyServer(function(input, output) {
  output$p <- renderPlot({
    Hz <- input$Hz # スライダーの値を取得
    curve(sin(x*pi*Hz), -3, 3, n = 1001)
  })
})
