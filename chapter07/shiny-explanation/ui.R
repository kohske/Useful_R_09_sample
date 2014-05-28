# レイアウトの登録
shinyUI(
  # ここではシンプルなレイアウト
  bootstrapPage(
    
    # HTML要素(<h1>タグ)
    h1("ShinyすごいよShiny"), # 最後のコンマを忘れずに
    
    # HTML要素(<p>タグ)
    p("テキストを入力して下さい。アナグラムを作成します。"),
    
    # 入力ポイント(テキスト入力)
    # server.Rではinput$iTextとしてレンダリング関数からアクセスします。
    textInput("iText", "テキスト内容", "ほげほげ"),
    
    # 出力ポイント(テキスト出力)
    # <p>タグで囲んで出力します。
    # server.Rではoutput$oTextとしてレンダリング関数を割り当てます。
    textOutput("oText")
  ))
