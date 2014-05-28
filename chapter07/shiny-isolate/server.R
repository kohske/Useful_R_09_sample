# データ
set.seed(42); x <- rnorm(1000); y <- rnorm(1000)

shinyServer(function(input, output) {
  # 入力ポイントの値に応じてプロットを作成
  output$p <- renderPlot({
    
    # アクションボタンへの依存を作成します。
    input$goButton
    
    # isolateの中のinput$XXXの変化からはこのレンダリング関数は呼び出されません。
    isolate(plot(x, y, pch = input$pch, main=input$ti, xlim = input$xlim, ylim = input$ylim))
  })
})
