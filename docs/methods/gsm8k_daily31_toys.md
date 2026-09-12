# 半数より多い関係から二人の玩具総数を求める

Billが60個持ち、Hashがその半数より9個多いとき二人の玩具総数を求める。

**取得済み固定GSM8Kの1問。**

- Billの60個は偶数なので半数は自然数として一意に定まる。

## toys_half：Billの半数を求める

条件：Billは60個持ち、求める半数を2倍すると60になる。

根拠：

得られること：Billの半数は30個。

既習の根拠：2×半数＝全数という自然数方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.toys_half`。

## toys_hash：Hashの個数を求める

条件：HashはBillの半数30個より9個多い。

根拠：

得られること：Hashは39個持つ。

既習の根拠：比較の基準量に超過分を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.toys_hash`。

## toys_total：二人の総数を求める

条件：Billは60個、Hashは39個持つ。

根拠：

得られること：二人の玩具は合計99個。

既習の根拠：二人の別々の所有数を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.toys_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912E.toys_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
