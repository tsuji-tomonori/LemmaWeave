# コーヒーの日数

3ポンド、1ポンド40杯分を1日3杯飲む。

**取得済み固定GSM8Kの1問。**

- 毎日同量を飲み最後まで同じ抽出量。

## coffee_cups：総杯数

条件：3ポンド、各40杯。

根拠：

得られること：120杯。

既習の根拠：単位数×単位当たり量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.coffee_cups`。

## coffee_days：日数

条件：120杯を1日3杯。

根拠：

得られること：40日。

既習の根拠：総量=日量×日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.coffee_days`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914E.coffee_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
