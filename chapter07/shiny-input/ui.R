shinyUI(fluidPage(
  fixedRow(
    # いろいろな入力ポイント
    column(width = 5,           
           textInput("t1", "名前は?"),
           selectInput("s1", "好きな食べ物は?", c("りんご", "みかん", "ジロー")),
           numericInput("n1", "体重は?", 50, 20, 100, 0.1),
           radioButtons("r1", "性別は?", c("オトコ", "オンナ"))
    ),
    # 出力するテキストのプレースホルダ
    column(width = 7, textOutput("to1", h1))
  )))
  
