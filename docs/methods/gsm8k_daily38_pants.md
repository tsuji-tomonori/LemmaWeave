# 80%上乗せされた小売価格から卸値を戻す

卸値へ80%を上乗せした小売価格が36ドルのズボンについて卸値を求める。

**取得済み固定GSM8Kの1問。**

- 80%は卸値を基準とする。

## pants_factor：小売価格を卸値の倍率で表す

条件：上乗せ額は卸値の80%=4/5で、小売価格は卸値と上乗せ額の和。

根拠：

得られること：小売価格は卸値の1+4/5=9/5倍。

既習の根拠：割合の基準量に割合を掛けて増加量を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.pants_factor`。

## pants_wholesale：倍率を逆算する

条件：36ドルが卸値の9/5倍。

根拠：

得られること：卸値は36÷(9/5)=20ドル。

既習の根拠：倍率で得た量から基準量を求めるには倍率で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.pants_wholesale`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914D.pants_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
