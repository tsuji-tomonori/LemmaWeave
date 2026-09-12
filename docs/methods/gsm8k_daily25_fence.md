# 交換する短辺の長さ

長辺が短辺の3倍で周長640フィートの長方形について、短辺1本の長さを求める。

**取得済み固定GSM8Kの1問。**

- 交換対象は長方形の短辺1本である。

## fence_eight_short：周長を短辺で表す

条件：長辺は短辺の3倍で、長辺と短辺が各2本。

根拠：

得られること：周長は短辺の8倍。

既習の根拠：長方形の周長 `2×短辺＋2×長辺` と代入。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.fence_eight_short`。

## fence_short：短辺1本の長さ

条件：短辺の8倍である周長が640フィート。

根拠：

得られること：交換する短辺は80フィート。

既習の根拠：一次方程式 `8×短辺＝640`。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.fence_short`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911D.fence_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
