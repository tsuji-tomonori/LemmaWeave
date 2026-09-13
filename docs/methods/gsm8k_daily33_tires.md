# 車種と予備タイヤの有無で総タイヤ数を求める

24台の3分の1が二輪車、残る車の4分の1が予備タイヤ付きのとき総タイヤ数を求める。

**取得済み固定GSM8Kの1問。**

- 二輪車2本、通常車4本、予備タイヤ付き車5本として重複なく分類する。

## tires_motorcycles：二輪車数を求める

条件：24台の3分の1が二輪車。

根拠：

得られること：二輪車は8台。

既習の根拠：24=3×8を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.tires_motorcycles`。

## tires_cars：車数を求める

条件：全24台から二輪車8台を除く。

根拠：

得られること：車は16台。

既習の根拠：24=8+16となる差を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.tires_cars`。

## tires_spare_cars：予備タイヤ付き車数を求める

条件：16台の車の4分の1に予備タイヤがある。

根拠：

得られること：予備タイヤ付きは4台。

既習の根拠：16=4×4を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.tires_spare_cars`。

## tires_total：総タイヤ数を求める

条件：二輪車8台、予備付き車4台、通常車12台。

根拠：

得られること：総タイヤ数は84本。

既習の根拠：8×2+4×5+12×4を排反に加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.tires_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913B.tires_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
