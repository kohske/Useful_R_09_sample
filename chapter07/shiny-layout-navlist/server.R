shinyServer(function(input, output) {
  # 出力ポイントのレンダリング関数を登録
  output$p1 <- renderPlot(plot(iris))
  output$v1 <- renderPrint({summary(iris)})
  output$cor <- renderPrint({cor(iris[, 1:4])})
  output$anova <- renderPrint({summary(aov(Sepal.Length ~ Species, data = iris))})
  output$raw <- renderDataTable({head(iris, 6)})
  output$hist <- renderPlot(hist(iris[, 1]))
})

