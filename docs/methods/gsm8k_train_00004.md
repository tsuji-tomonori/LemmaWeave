# 残りの半分を順序通り求める

120ページを昨日12、今日はその2倍読む。明日は残りの半分。何ページか？

**既に収集したGSM8Kの1問。入試問題数・新規収集数には加えない。**

- 原題のJulieと参考解答のMailaの名の違いを確認。基準量は今日まで読んだ後の残り。

## reading_today：今日の読書量

条件：昨日12の2倍。

根拠：

得られること：t=24ページ。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.reading_today`。

## reading_read：既読合計

条件：昨日と今日に別の未読ページを読む。

根拠：

得られること：12+24=36ページ。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.reading_read`。

## reading_remaining：未読

条件：既読36と未読rの合計120。

根拠：[保存式から残量を求める](remaining_balance.md)

得られること：r=120−36=84ページ。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.reading_remaining`。

## reading_tomorrow：明日の量

条件：2n=r、2≠0。

根拠：[積の関係から部分量を求める](fraction_balance.md)

得られること：n=84÷2=42ページ。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.reading_tomorrow`。

## reading_exists：充足例

条件：今日24・未読84・明日42。

根拠：

得られること：非負整数で元の3関係を満たす。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.reading_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KFirstSteps.reading_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
