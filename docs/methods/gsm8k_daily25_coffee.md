# コーヒーがもつ日数

3ポンドのコーヒーから淹れられる杯数を、1日3杯で使う日数へ換算する。

**取得済み固定GSM8Kの1問。**

- 原文のabout 40 cupsをこの問題の計算値40杯/ポンドとして用いる。

## coffee_total：淹れられる総杯数

条件：3ポンドで、1ポンド当たり約40杯。

根拠：

得られること：約120杯。

既習の根拠：重量×単位重量当たり杯数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.coffee_total`。

## coffee_days：使い切る日数

条件：約120杯を1日3杯ずつ飲む。

根拠：

得られること：40日もつ。

既習の根拠：等分の逆算 `3×日数＝120`。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.coffee_days`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911D.coffee_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
