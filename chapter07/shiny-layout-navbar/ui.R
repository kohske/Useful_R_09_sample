shinyUI(
  # メインのナビゲーションバー
  navbarPage(
    "ナビゲーション",
    # ナビゲーションのタブ要素
    tabPanel("プロット", plotOutput("p1")), 
    tabPanel("サマリー", verbatimTextOutput("v1")),
    # 入れ子のタブ要素
    navbarMenu(
      "解析",
      tabPanel("相関", verbatimTextOutput("cor")),
      tabPanel("分散分析", verbatimTextOutput("anova")),
      tabPanel("生データ", dataTableOutput("raw")))
  ))