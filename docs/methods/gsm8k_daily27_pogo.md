# ポゴスティック代までの不足額

土曜18ドル、日曜はその半分、前週末20ドルを稼いだJohnが60ドルに達するまでの不足額を求める。

**取得済み固定GSM8Kの1問。**

- 日曜の半額関係、収入の合計、価格までの不足を順に求める。

## pogo_sunday：日曜の収入

条件：土曜は18ドルで、日曜はその半分。

根拠：

得られること：日曜は9ドル。

既習の根拠：2×半分＝元の量という関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.pogo_sunday`。

## pogo_earned：これまでの収入合計

条件：今週末は18ドルと9ドル、前週末は20ドル。

根拠：

得られること：合計47ドル。

既習の根拠：異なる期間の収入の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.pogo_earned`。

## pogo_needed：不足額

条件：必要額60ドルに対して47ドルある。

根拠：

得られること：あと13ドル必要。

既習の根拠：必要額＝現在額＋不足額。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.pogo_needed`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912A.pogo_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
