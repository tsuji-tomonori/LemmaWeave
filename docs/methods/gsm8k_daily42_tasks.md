# 家事と宿題の合計から部屋掃除時間を求める

2時間を120分へ換算し、既知の30分、15分、40分を除いて部屋掃除時間を求める。

**取得済み固定GSM8Kの1問。**

- 4作業は重複せず、合計2時間を占めると解釈する。

## tasks_totals：総時間と既知時間

条件：総時間は2時間、既知の作業は30分、15分、40分。

根拠：

得られること：総時間120分、既知時間85分。

既習の根拠：1時間=60分で換算し、既知部分を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.tasks_totals`。

## tasks_room：部屋掃除時間

条件：120分のうち85分が既知の作業。

根拠：

得られること：部屋掃除は35分。

既習の根拠：全体=既知部分+未知部分を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.tasks_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915C.tasks_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
