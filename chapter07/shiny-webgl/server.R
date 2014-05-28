library(shinyRGL) # shinyRGLパッケージを読み込みます。
library(rgl) # rglパッケージを読み込みます。

shinyServer(function(input, output) {
  # WebGL出力処理
  output$p <- renderWebGL({
    # 表示するカラーカテゴリ
    colsT <- laply(cols, function(v) input[[paste0("i", v)]])
    if (any(colsT)) {
      # 表示するカラーカテゴリを抽出
      d <- subset(diamonds, color %in% cols[colsT])
      # 3次元プロット
      plot3d(d$carat, d$depth, d$price, col = rainbow(7)[d$color])
    } else {
      plot3d(NULL)
    }
  })
})
