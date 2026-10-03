# 牛肉と鶏肉の注文費用を合計する

牛肉1000ポンドを1ポンド8ドル、牛肉の2倍量の鶏肉を1ポンド3ドルで注文したとき、総費用を求める。

**取得済み固定GSM8Kの1問。**

- twice that muchは重量1000ポンドの2倍とし、費用の2倍とは読まない。

## order_beef：牛肉代

条件：1000ポンド、1ポンド8ドル。

根拠：

得られること：8000ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.order_beef`。

## order_chicken_pounds：鶏肉の重量

条件：牛肉1000ポンドの2倍量。

根拠：

得られること：2000ポンド。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.order_chicken_pounds`。

## order_chicken_cost：鶏肉代

条件：2000ポンド、1ポンド3ドル。

根拠：

得られること：6000ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.order_chicken_cost`。

## order_total：総費用

条件：牛肉代8000ドルと鶏肉代6000ドル。

根拠：

得られること：14000ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.order_total`。

## order_exists：条件の充足

条件：牛肉代8000、鶏肉2000ポンド・6000ドル、総額14000ドルと置く。

根拠：

得られること：重量、単価、総額の全条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.order_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908D.order_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
