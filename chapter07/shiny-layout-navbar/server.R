options(width=1000)
shinyServer(function(input, output) {
  # 出力ポイントのレンダリング関数を登録
  output$p1 <- renderPlot(plot(iris))
  output$v1 <- renderPrint({summary(iris)})
  output$cor <- renderPrint({cor(iris[, 1:4])})
  output$anova <- renderPrint({summary(aov(Sepal.Length ~ Species, data = iris))})
  output$raw <- renderDataTable({iris})
})

