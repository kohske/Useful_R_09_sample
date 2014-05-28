shinyServer(function(input, output) {
  # レンダリング関数の登録
  # p1はdiv要素のid属性により出力ポイントを指定します。
  output$p1 <- renderPlot({
    # input$n1 で入力ポイントの値を取得します。n1はformタグのname要素です。
    hist(rnorm(input$n1))
  })  
})