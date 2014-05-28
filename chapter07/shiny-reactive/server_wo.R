# スライダーで指定されたデータ範囲に対して回帰分析を行いモデル選択する関数
# スライダーの値が変化すると2回呼び出されます。
f <- function(range) {
  step(lm(price~x+y+z, data = ggplot2::diamonds[seq.int(range[1], range[2]), ]), trace=0)
}

shinyServer(function(input, output) {

  # 回帰モデルを選択して、係数をプロットします。
  output$p <- renderPlot({
    fit <- f(input$r) # モデル選択処理の呼び出し
    barplot(coef(fit))
  })
  
  # 回帰モデルを選択して、概要を出力します。
  output$v <- renderPrint({
    fit <- f(input$r) # モデル選択処理の呼び出し
    summary(fit)    
  })
})
