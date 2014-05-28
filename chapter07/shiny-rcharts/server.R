library(rCharts) #rChartsパッケージを読み込みます。

shinyServer(function(input, output) {
  # rChartsプロットのレンダリング
  output$p <- renderChart({
    p <- rPlot(input$X, input$Y, data=mtcars, color = input$C, type="point")
    # サイズとDOM要素の指定
    p$addParams(width = 600, height = 450, dom = "p")
    return(p)
  })
})
