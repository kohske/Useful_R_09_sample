# �v���b�g�ł̓��{��t�H���g�̗��p (Windows CP932)




����R�}�[�N�_�E���t�@�C����CP932(Shift_JIS)�G���R�[�f�B���O�ŕۑ����Ă��������B���̃R�}���h��HTML�t�@�C�����쐬�ł��܂��B


```r
library(knitr)
opts_knit$restore()
opts_chunk$restore()
knit("ja-fig-win-CP932.Rmd")
Sys.setlocale(locale="C")
cat(iconv(markdown::markdownToHTML("ja-fig-win-CP932.md"),
	from="CP932", to="utf-8"),
	file = "ja-fig-win-CP932.html")
Sys.setlocale(locale="Japanese_Japan.932")
browseURL("ja-fig-win-CP932.html")
```





<img src="figure/ja-fig-win-CP932-fig1.png" title="plot of chunk fig1" alt="plot of chunk fig1" style="display: block; margin: auto;" />




