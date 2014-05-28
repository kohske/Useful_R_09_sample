# サーバ関数の登録
shinyServer(
  # サーバ関数
  function(input, output) {
    
    # 出力ポイント(IDがoText)にレンダリング関数を割り当てます。
    # renderText内の中括弧("{")を忘れずに。
    output$oText <- renderText({
      
      # 入力ポイント(IDがiText)からテキストを取得します。
      txt <- input$iText
      
      # アナグラム作成
      txt <- paste0(strsplit(txt, "")[[1]][sample(nchar(txt))], collapse="")    
      
      # 出力ポイントのテキストを更新
      return(txt)
    })
    
    # 必要なら他の出力ポイントへの割り当て
    # output$abc <- renderXYZ({ ... })
    # output$def <- renderUVW({ ... })
  })
