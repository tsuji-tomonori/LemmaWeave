# LisaとCarlyの衣類代合計

LisaのTシャツ40ドルを基準に各衣類代を求め、Lisaに対する倍率でCarlyの各衣類代を求めて2人の総額を計算する。

**取得済み固定GSM8Kの1問。**

- Carlyの倍率は衣類ごとに対応するLisaの支出へ適用する。

## shopping_lisa_jeans：Lisaのジーンズ代

条件：Tシャツ40ドルの半分。

根拠：

得られること：20ドル。

既習の根拠：2等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.shopping_lisa_jeans`。

## shopping_lisa_coats：Lisaのコート代

条件：Tシャツ40ドルの2倍。

根拠：

得られること：80ドル。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.shopping_lisa_coats`。

## shopping_lisa_total：Lisaの合計

条件：40、20、80ドルを合計する。

根拠：

得られること：140ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.shopping_lisa_total`。

## shopping_carly_shirts：CarlyのTシャツ代

条件：Lisaの40ドルの4分の1。

根拠：

得られること：10ドル。

既習の根拠：4等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.shopping_carly_shirts`。

## shopping_carly_jeans：Carlyのジーンズ代

条件：Lisaのジーンズ20ドルの3倍。

根拠：

得られること：60ドル。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.shopping_carly_jeans`。

## shopping_carly_coats：Carlyのコート代

条件：Lisaのコート80ドルの4分の1。

根拠：

得られること：20ドル。

既習の根拠：4等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.shopping_carly_coats`。

## shopping_carly_total：Carlyの合計

条件：10、60、20ドルを合計する。

根拠：

得られること：90ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.shopping_carly_total`。

## shopping_total：2人の総額

条件：Lisa140ドルとCarly90ドル。

根拠：

得られること：合計230ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.shopping_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910B.shopping_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
