shinyServer(function(input, output) {
  output$to1 <- renderText({
    # 出力ポイントから情報を取得
    name <- input$t1
    food <- input$s1
    weight <- input$n1
    sex <- input$r1

    # 出力テキストを生成
    paste0("あなたの名前は", name, "です。好きな食べ物は", food, "なので、体重はなんと", weight, 
           "kgですって。ちなみに性別は", sex, "のコ。")
  })
})
