# 2人が割ったグラス総数

Davidが2個、Williamがその4倍割ったときの合計。

**取得済み固定GSM8Kの1問。**

- Williamの個数を求めてDavid分と合算する。

## glasses_william：William分

条件：Davidの2個の4倍。

根拠：

得られること：Williamは8個。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.glasses_william`。

## glasses_total：総数

条件：David2個とWilliam8個。

根拠：

得られること：合計10個。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.glasses_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910C.glasses_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
