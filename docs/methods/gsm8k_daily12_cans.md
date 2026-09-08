# 缶1本当たりの価格差を求める

48本12ドルの倉庫と12本6ドルの店について、1本当たりの価格差をセントで求める。

**取得済み固定GSM8Kの1問。**

- 金額をセントに統一して単価を比較する。

## cans_bulk：倉庫の単価

条件：48本で1200セント。

根拠：

得られること：1本25セント。

既習の根拠：総額÷個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.cans_bulk`。

## cans_grocery：店の単価

条件：12本で600セント。

根拠：

得られること：1本50セント。

既習の根拠：総額÷個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.cans_grocery`。

## cans_difference：単価差

条件：店50セント、倉庫25セント。

根拠：

得られること：店は1本当たり25セント高い。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.cans_difference`。

## cans_exists：条件の充足

条件：倉庫25、店50、差25と置く。

根拠：

得られること：価格条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.cans_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909A.cans_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
