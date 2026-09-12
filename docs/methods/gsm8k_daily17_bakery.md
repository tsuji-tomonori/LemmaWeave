# 事前注文割引後の代金

キッシュ2個各15ドル、クロワッサン6個各3ドル、ビスケット6個各2ドルを事前注文し、50ドル超の10%割引を受けるとき支払額を求める。

**取得済み固定GSM8Kの1問。**

- 割引条件は小計が50ドルを厳密に超えること。

## bakery_quiches：キッシュ代

条件：2個を各15ドルで買う。

根拠：

得られること：30ドル。

既習の根拠：単価×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bakery_quiches`。

## bakery_croissants：クロワッサン代

条件：6個を各3ドルで買う。

根拠：

得られること：18ドル。

既習の根拠：単価×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bakery_croissants`。

## bakery_biscuits：ビスケット代

条件：6個を各2ドルで買う。

根拠：

得られること：12ドル。

既習の根拠：単価×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bakery_biscuits`。

## bakery_subtotal：割引前小計

条件：3品目の30、18、12ドルを合計する。

根拠：

得られること：小計60ドルで50ドルを超える。

既習の根拠：部分代金の加法と大小比較。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bakery_subtotal`。

## bakery_discount：割引額

条件：対象小計60ドルの10%。

根拠：

得られること：6ドル引き。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bakery_discount`。

## bakery_total：割引後の支払額

条件：60ドルから6ドルを引く。

根拠：

得られること：54ドル。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bakery_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910A.bakery_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
