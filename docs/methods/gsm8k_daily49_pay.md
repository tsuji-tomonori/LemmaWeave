# 1勤務日の賃金

週35時間を5日に等分し、時給9ドルの1日分の賃金を求める。

**取得済み固定GSM8Kの1問。**

- 勤務時間は5日へ等分される。

## pay_daily_hours：1日の勤務時間

条件：週35時間を5勤務日に等分する。

根拠：

得られること：1日7時間。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.pay_daily_hours`。

## pay_each_day：1日の賃金

条件：7時間を時給9ドルで働く。

根拠：

得られること：1日63ドル。

既習の根拠：単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.pay_each_day`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917E.pay_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
