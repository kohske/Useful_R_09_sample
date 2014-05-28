shinyUI(fluidPage(
  fixedRow(
    column(width = 6,
           p("テキスト→テキスト出力"),
           textOutput("t1"), # テキストの出力ポイント
           br(),
           p("テキスト→HTML出力"),           
           htmlOutput("h1"), # HTMLの出力ポイント
           br(),
           p("データフレーム→表出力"),
           tableOutput("tbl1") # 表の出力ポイント
    ),
    column(width = 6,
           p("出力キャプチャ→整形済みテキスト出力"),
           verbatimTextOutput("v1")) # 整形済みテキストの出力ポイント
  )
))
