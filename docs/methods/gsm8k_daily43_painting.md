# 大小の絵の売上合計

大作と小作の売上をそれぞれ求めて合計する。

**取得済み固定GSM8Kの1問。**

- earned in allを販売価格の総額とし、費用は記載がないため差し引かない。

## painting_parts：種類別売上

条件：大作5枚を各100ドル、小作8枚を各80ドルで売る。

根拠：

得られること：大作500ドル、小作640ドル。

既習の根拠：売上=単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.painting_parts`。

## painting_total：売上合計

条件：種類別売上500ドルと640ドルを合わせる。

根拠：

得られること：総売上は1140ドル。

既習の根拠：重複しない売上の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915D.painting_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915D.painting_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
