shinyServer(function(input, output) {
  
  # Reactive。スライダーの値が変化すると1回だけ実行されます。
  fit <- reactive({
    step(lm(price~x+y+z, data = ggplot2::diamonds[seq.int(input$r[1], input$r[2]), ]), trace=0)
  })
  
  # Reactiveから回帰モデルを取得して、係数をプロットします。    
  output$p <- renderPlot({barplot(coef(fit()))})
  
  # Reactiveから回帰モデルを取得して、概要を出力します。    
  output$v <- renderPrint({summary(fit())})
})
