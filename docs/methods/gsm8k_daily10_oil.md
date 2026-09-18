# 車輪と車体の油量を合計する

自転車の各車輪に10ml、その他に5ml必要なとき総油量を求める。

**取得済み固定GSM8Kの1問。**

- 通常の二輪自転車として車輪数2を用いる。

## oil_wheels：車輪用の油

条件：車輪2個に各10ml。

根拠：

得られること：20ml。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.oil_wheels`。

## oil_total：総油量

条件：車輪用20mlにその他5mlを加える。

根拠：

得られること：25ml。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.oil_total`。

## oil_exists：条件の充足

条件：車輪用20ml、総量25mlと置く。

根拠：

得られること：各車輪とその他の必要量を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.oil_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908E.oil_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
