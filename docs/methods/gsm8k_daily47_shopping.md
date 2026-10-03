# 割引と税込みの買物代

衣類の割引後小計と5%税を求める。

**取得済み固定GSM8Kの1問。**

- 10%割引はジャケットだけに、5%税は割引後小計全体に適用する。

## shopping_subtotal：割引後小計

条件：Tシャツ6着×8ドル、セーター4着×18ドル、ジャケット5着×80ドルに10%割引。

根拠：

得られること：各48、72、割引後360ドルなので小計は480ドル。

既習の根拠：数量×単価、百分率、加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.shopping_subtotal`。

## shopping_total：税込み総額

条件：割引後小計480ドルに5%の売上税を加える。

根拠：

得られること：税は24ドル、支払額は504ドル。

既習の根拠：百分率による税額と合計。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.shopping_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917C.shopping_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
