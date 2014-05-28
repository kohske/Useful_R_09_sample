library(googleVis) #googleVisパッケージを読み込みます

shinyServer(function(input, output) {
  # googleVisプロットのレンダリング
  output$p <- renderGvis({
    d <- data.frame(mtcars[[input$X]], mtcars[[input$Y]])
    names(d) <- c(input$X, input$Y)
    gvisScatterChart(d)
  })
})
