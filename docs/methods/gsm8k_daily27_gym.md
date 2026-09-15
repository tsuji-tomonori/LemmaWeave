# 週のジム滞在時間

週3回、毎回1時間の筋トレとその3分の1の準備・有酸素運動をする週の合計時間を求める。

**取得済み固定GSM8Kの1問。**

- 時間を分へ統一して各回と週の合計を求め、最後に時間へ換算する。

## gym_extra：追加運動時間

条件：筋トレは60分で、準備・有酸素運動はその3分の1。

根拠：

得られること：追加時間は20分。

既習の根拠：3分の1を積の方程式で表す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.gym_extra`。

## gym_visit：1回の滞在時間

条件：筋トレ60分に追加20分を行う。

根拠：

得られること：1回は80分。

既習の根拠：互いに重ならない時間の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.gym_visit`。

## gym_week_minutes：週の合計分数

条件：1回80分で週3回。

根拠：

得られること：週240分。

既習の根拠：合計＝回数×1回分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.gym_week_minutes`。

## gym_hours：時間への換算

条件：週240分で1時間は60分。

根拠：

得られること：週4時間。

既習の根拠：分から時間への単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.gym_hours`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912A.gym_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
