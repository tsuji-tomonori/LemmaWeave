# 長方形フェンス

長辺が短辺の3倍、周長640フィートから交換する短辺1本を求める。

**取得済み固定GSM8Kの1問。**

- 交換対象は短辺1本。

## fence_perimeter：周長式

条件：長辺3S、各辺2本。

根拠：

得られること：周長は8S。

既習の根拠：長方形の周長は2短辺+2長辺。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.fence_perimeter`。

## fence_short：短辺

条件：8S=640。

根拠：

得られること：S=80フィート。

既習の根拠：周長方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.fence_short`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914E.fence_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
