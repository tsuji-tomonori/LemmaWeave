# 人数減少後の贈り物代

10人から4人抜け、1人分が8ドル増えた贈り物の総額を求める。

**取得済み固定GSM8Kの1問。**

- 贈り物の総額は人数変更前後で同じ。

## gift_original_share：元の負担額

条件：元の1人分をxドルとすると、10x=6(x+8)。

根拠：

得られること：x=12ドル。

既習の根拠：同じ総額を人数×1人分で二通りに表す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.gift_original_share`。

## gift_total：贈り物の総額

条件：元は10人が各12ドル負担する。

根拠：

得られること：贈り物は120ドル。

既習の根拠：総額=人数×1人分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.gift_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915A.gift_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
