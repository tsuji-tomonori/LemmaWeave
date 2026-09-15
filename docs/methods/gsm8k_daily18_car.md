# 車買替えの持出額

2万ドルの旧車を価値の80%で売り、表示価格3万ドルの新車を90%で買うときの持出額を求める。

**取得済み固定GSM8Kの1問。**

- 持出額は新車の実購入額から旧車の売却収入を引く。

## car_sale：旧車の売却額

条件：2万ドルの80%。

根拠：

得られること：16,000ドル。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.car_sale`。

## car_purchase：新車の購入額

条件：3万ドルの90%。

根拠：

得られること：27,000ドル。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.car_purchase`。

## car_out_of_pocket：持出額

条件：購入27,000ドルに売却収入16,000ドルを充てる。

根拠：

得られること：27,000-16,000=11,000ドル。

既習の根拠：支出と収入の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.car_out_of_pocket`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910B.car_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
