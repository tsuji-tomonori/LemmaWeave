# パイの利益

12台を各3切れ、1切れ4ドルで全量販売し、1台0.5ドルの製造費を引く。

**取得済み固定GSM8Kの1問。**

- 他の費用はなく、金額をセントで表す。

## pies_pieces：切れ数

条件：12台、各3切れ。

根拠：

得られること：36切れ。

既習の根拠：台数×切れ数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.pies_pieces`。

## pies_revenue_cost：売上と費用

条件：36切れ各400セント、12台各50セント。

根拠：

得られること：売上14400、費用600セント。

既習の根拠：個数×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.pies_revenue_cost`。

## pies_profit：利益

条件：売上14400、費用600セント。

根拠：

得られること：13800セント=138ドル。

既習の根拠：売上=利益+費用。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.pies_profit`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914E.pies_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
