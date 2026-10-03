# Benedictの家の面積

Kennedyの家10000平方フィートがBenedictの4倍より600大きいとき、Benedictの面積を求める。

**取得済み固定GSM8Kの1問。**

- 関係を10000=4b+600とする。

## house_subtract：600を除く

条件：10000=4b+600。

根拠：

得られること：両辺から600を引いて4b=9400。

既習の根拠：等式の両辺から同じ数を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.house_subtract`。

## house_benedict：4で割る

条件：4b=9400。

根拠：

得られること：b=9400÷4=2350平方フィート。

既習の根拠：一次方程式を正の係数で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.house_benedict`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909C.house_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
