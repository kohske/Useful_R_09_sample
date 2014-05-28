library(R2HTML)

# HTMLStartでHTMLファイルへの出力を開始します。
HTMLStart(".", Title="R2HTMLでレポート生成", HTMLframe=FALSE)

HTML.title("R2HTMLでレポート生成", HR=1)

HTML.title("表の出力", HR=2)
HTML("データフレームや行列は表で出力されます")
HTML(iris[1:3, ])

HTML.title("プロットの出力", HR=2)
HTML("プロット命令の後にHTMLplotを呼び出します。")
boxplot(iris[,1]~iris[,5])
HTMLplot(Width=300, Height=300)

# 最後にHTMLStop()でHTMLファイルを作成します。
HTMLStop()
