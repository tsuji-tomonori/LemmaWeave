# 3人の合計体重

Jimが110ポンド、Steveが8ポンド軽く、StanがSteveより5ポンド重いとき合計を求める。

**取得済み固定GSM8Kの1問。**

- 比較の基準をJim→Steve→Stanの順に保持する。

## weights_each：SteveとStanの体重

条件：Jimは110ポンド、SteveはJimより8ポンド軽く、StanはSteveより5ポンド重い。

根拠：

得られること：Steveは102ポンド、Stanは107ポンド。

既習の根拠：差の加減。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.weights_each`。

## weights_total：3人の合計

条件：3人は110、102、107ポンド。

根拠：

得られること：合計は319ポンド。

既習の根拠：3数量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.weights_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917D.weights_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
