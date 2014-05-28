shinyServer(function(input, output) {

  # テキストのレンダリング(そのまま出力されます)
  output$t1 <- renderText({"<b><i>HTMLタグ</i></b>を使えます。"})
  
  # テキストをレンダリングしてHTML出力に(タグがパースされます)
  output$h1 <- renderText({"<b><i>HTMLタグ</i></b>を使えます。"})
  
  # データフレームを表としてレンダリングして出力
  output$tbl1 <- renderTable({head(iris, 3)})
  
  # R式の評価時の出力をそのままレンダリングして整形済みテキストとして出力。
  output$v1 <- renderPrint({
    set.seed(42)
    t.test(rnorm(10))
  })
})
