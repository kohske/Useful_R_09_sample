samples <- c()
shinyServer(function(input, output) {
  # 1行目のレンダリング
  output$p1 <- renderPlot({
    samples <<- rnorm(input$s1)
    hist(samples)
  })
  # 2行目のレンダリング
  output$v1 <- renderPrint({
    input$s1; print(length(samples)); summary(samples)})
})

