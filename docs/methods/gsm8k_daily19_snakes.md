# 3匹のヘビの全長

2フィート、16インチ、10インチの全長をインチで求める。

**取得済み固定GSM8Kの1問。**

- 1フィート=12インチで単位を統一する。

## snakes_first：フィート換算

条件：1フィートが12インチ。

根拠：

得られること：2フィートは24インチ。

既習の根拠：長さの単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.snakes_first`。

## snakes_total：全長

条件：24、16、10インチを合算する。

根拠：

得られること：全長は50インチ。

既習の根拠：同単位量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.snakes_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910C.snakes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
