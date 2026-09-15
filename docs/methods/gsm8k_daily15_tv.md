# 2番組の視聴時間

20分の番組2話と、その2倍の長さの番組2話の視聴時間を時間単位で求める。

**取得済み固定GSM8Kの1問。**


## tv_jeopardy_total：Jeopardyの合計

条件：1話20分を2話見る。

根拠：

得られること：20×2=40分。

既習の根拠：単位時間と話数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.tv_jeopardy_total`。

## tv_wheel_each：Wheel 1話の長さ

条件：Jeopardy 20分の2倍。

根拠：

得られること：1話40分。

既習の根拠：倍の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.tv_wheel_each`。

## tv_wheel_total：Wheelの合計

条件：1話40分を2話見る。

根拠：

得られること：40×2=80分。

既習の根拠：単位時間と話数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.tv_wheel_total`。

## tv_total_minutes：総分数

条件：40分と80分を視聴する。

根拠：

得られること：合計120分。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.tv_total_minutes`。

## tv_hours：時間へ換算

条件：1時間は60分で、合計120分。

根拠：

得られること：120÷60=2時間。

既習の根拠：時間単位の換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.tv_hours`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909D.tv_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
