# 総額から小型収納箱の単価を求める

大型3個と小型6個で48ドル、大型1個6ドルのとき、小型1個の価格を求める。

**取得済み固定GSM8Kの1問。**

- 同じ大きさの収納箱は同単価で、税などは総額に含めない。

## tubs_large_total：大型3個の代金を求める

条件：大型は3個で1個6ドル。

根拠：

得られること：大型代は18ドル。

既習の根拠：単価×個数を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.tubs_large_total`。

## tubs_small_price：小型1個の単価を求める

条件：総額48ドルから大型代18ドルを引いた30ドルが小型6個分。

根拠：

得られること：小型は30÷6=5ドル。

既習の根拠：残額を同価格の個数で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.tubs_small_price`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914C.tubs_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
