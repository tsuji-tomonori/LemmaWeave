# オーブンの電気料金

消費電力2.4 kWのオーブンを25時間使い、電力量単価0.10ドル/kWhと解釈したときの料金を求める。

**取得済み固定GSM8Kの1問。**

- 原文は価格をkW当たり、消費率をkWhと書いており次元が不整合。2.4 kWを25時間、0.10ドル/kWhという標準的な条件へ読み替えた条件付き解答。

## oven_energy：使用電力量

条件：2.4 kWで25時間使用するという追加解釈。

根拠：

得られること：電力量は60 kWh（0.1 kWh単位で600）。

既習の根拠：電力量＝電力×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.oven_energy`。

## oven_cost_cents：セント単位の料金

条件：1 kWh当たり10セントで60 kWh使用する。

根拠：

得られること：料金は600セント。

既習の根拠：料金＝電力量×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.oven_cost_cents`。

## oven_cost_dollars：ドルへ換算

条件：100セントが1ドル。

根拠：

得られること：料金は6ドル。

既習の根拠：通貨単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.oven_cost_dollars`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918B.oven_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
