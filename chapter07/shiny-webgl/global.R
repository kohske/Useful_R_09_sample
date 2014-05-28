library(plyr)
set.seed(42)
# 60000サンプルは巨大すぎるので、ランダムにサンプリング
diamonds <- ggplot2::diamonds[sample.int(nrow(ggplot2::diamonds), 10000), ]
# カラーカテゴリ
cols <- sort(unique(diamonds$color))
