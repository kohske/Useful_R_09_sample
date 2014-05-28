shinyUI(
  fluidPage(
    # タイトル
    titlePanel("ナビゲーションバーによるレイアウト"),
    # ナビゲーションバーのレイアウト
    navlistPanel(      
      # ナビゲーションのタブ要素
      "基本的な解析結果",
      tabPanel("プロット", plotOutput("p1")), 
      tabPanel("サマリー", verbatimTextOutput("v1")),
      "----",
      "応用的な解析結果",
      # 階層メニュー        
      navbarMenu(
        "数値データ",
        tabPanel("相関", verbatimTextOutput("cor")),
        tabPanel("分散分析", verbatimTextOutput("anova")),
        tabPanel("生データ", dataTableOutput("raw"))),
      navbarMenu(
        "可視化",
        tabPanel("ヒストグラム", plotOutput("hist"))
      ))
  ))
