# パーティー購入のおつり

飲み物5箱とピザ10箱を買い、200ドル払ったときのおつりを求める。

**取得済み固定GSM8Kの1問。**

- 商品総額を支払額から引く。

## party_drinks：飲み物代

条件：1箱6ドルを5箱買う。

根拠：

得られること：飲み物代は30ドル。

既習の根拠：単価と個数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.party_drinks`。

## party_pizzas：ピザ代

条件：1箱14ドルを10箱買う。

根拠：

得られること：ピザ代は140ドル。

既習の根拠：単価と個数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.party_pizzas`。

## party_spent：購入総額

条件：30ドルと140ドルを合算する。

根拠：

得られること：購入総額は170ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.party_spent`。

## party_change：おつり

条件：支払った200ドルから170ドルを引く。

根拠：

得られること：答えは30ドル。

既習の根拠：支払額と代金の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.party_change`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910D.party_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
