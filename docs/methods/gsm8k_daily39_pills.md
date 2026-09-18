# 段階的な服薬

50錠から2日間は1日6錠、次の3日間は半量、最後に2錠飲んだ残数を求める。

**取得済み固定GSM8Kの1問。**

- 半量は1日6錠を3錠へ減らす。

## pills_first：最初の2日

条件：1日6錠を2日。

根拠：

得られること：12錠使用。

既習の根拠：日量×日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.pills_first`。

## pills_second：次の3日

条件：日量を半分の3錠にして3日。

根拠：

得られること：9錠使用。

既習の根拠：半量を求め日数を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.pills_second`。

## pills_left：残数

条件：12錠、9錠、最後2錠を使用。

根拠：

得られること：50-23=27錠。

既習の根拠：初期量=使用量+残量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.pills_left`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914E.pills_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
