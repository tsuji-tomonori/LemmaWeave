# 縄跳び記録に必要な時間

毎秒3回の一定速度を1時間当たりへ換算し、54000回に必要な時間を求める。

**取得済み固定GSM8Kの1問。**

- 休憩せず毎秒3回の速度を保つとする。

## rope_rates：時間単位の換算

条件：毎秒3回、1分60秒、1時間60分。

根拠：

得られること：毎分180回、毎時10800回。

既習の根拠：単位時間当たりの回数を時間の倍率で換算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.rope_rates`。

## rope_hours：必要時間

条件：54000回を毎時10800回で跳ぶ。

根拠：

得られること：必要時間は5時間。

既習の根拠：時間=総回数÷単位時間当たり回数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.rope_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915B.rope_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
