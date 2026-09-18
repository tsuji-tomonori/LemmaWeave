# 洗車パックの60パーセント価格

通常15ドルの洗車20回分の定価を求め、支払率60%を掛ける。

**取得済み固定GSM8Kの1問。**

- only has to pay 60%を通常合計額の60%を支払う意味と読む。

## carwash_list：通常合計額

条件：洗車は20回、通常1回15ドル。

根拠：

得られること：通常合計額は300ドル。

既習の根拠：単価×回数で合計額を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.carwash_list`。

## carwash_paid：パック支払額

条件：通常合計額300ドルの60%を支払う。

根拠：

得られること：支払額は180ドル。

既習の根拠：百分率60%を60/100として掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.carwash_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915C.carwash_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
