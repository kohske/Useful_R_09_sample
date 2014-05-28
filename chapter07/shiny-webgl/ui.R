shinyUI(pageWithSidebar(
  headerPanel("Shiny & WebGL!!"),
  sidebarPanel(
    width = 3, helpText("表示するカラーカテゴリ"),
    
    # 入力ポイント(チェックボックス)
    llply(cols, function(v) checkboxInput(paste0("i", v), v, value=TRUE))
  ),
  
  # 出力ポイント(WebGL出力)
  mainPanel(webGLOutput("p"), width=9)
))
