# 購入総額から手持ちを引いて必要貯金額を求める

1冊5ドルの本を8冊買うため、既に13ドルあるとき追加で必要な額を求める。

**取得済み固定GSM8Kの1問。**

- 必要総額＝手持ち＋追加貯金額とする。

## books_cost：本の総額を求める

条件：同じ5ドルの本を8冊買う。

根拠：

得られること：購入総額は40ドル。

既習の根拠：個数×単価として8×5を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.books_cost`。

## books_needed：追加で必要な額を求める

条件：総額40ドルのうち13ドルを既に持つ。

根拠：

得られること：追加で27ドル貯める必要がある。

既習の根拠：総額＝手持ち＋不足額の自然数方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.books_needed`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912E.books_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
