# 月ごとの川の深さ

5月の5フィートに10フィートを加えて6月を求め、その3倍を7月の深さとする。

**取得済み固定GSM8Kの1問。**

- three times deeperを6月の深さの3倍と解釈する。

## river_june：6月の深さ

条件：5月は5フィート、6月はそれより10フィート深い。

根拠：

得られること：6月は15フィート。

既習の根拠：基準量に増加量を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.river_june`。

## river_july：7月の深さ

条件：7月は6月の3倍の深さ。

根拠：

得られること：7月は45フィート。

既習の根拠：倍率3を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.river_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915C.river_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
