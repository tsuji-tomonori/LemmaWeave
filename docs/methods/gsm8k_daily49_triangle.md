# 三角形の第3辺

周長160cm、2辺40cmと50cmから第3辺を求める。

**取得済み固定GSM8Kの1問。**

- 第3辺70cmは既知2辺の和90cmより短く、三角形の成立条件にも整合する。

## triangle_known_sum：既知2辺の和

条件：2辺は40cmと50cm。

根拠：

得られること：和は90cm。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.triangle_known_sum`。

## triangle_third_and_valid：第3辺と成立条件

条件：3辺の和が周長160cmである。

根拠：

得られること：第3辺は70cmで、70<90を満たす。

既習の根拠：周長からの差と三角不等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.triangle_third_and_valid`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917E.triangle_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
