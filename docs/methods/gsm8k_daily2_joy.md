# 読む速さから120ページに必要な時間を求める

20分で8ページ読むJoyが120ページを読むのに何時間か。

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- 速度が全読書中一定で、休憩時間を含めない通常の文章題モデル。
- ページ数・分・時間の単位を区別し、300分から5時間へ換算する。

## joy_minutes：ページ数の比例式

条件：読書速度が一定で、8ページに20分、120ページにm分。

根拠：

得られること：8m=120×20よりm=300分。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.joy_minutes`。

## joy_hours：分を時間へ換算

条件：1時間=60分、h時間=300分。

根拠：

得られること：60h=300よりh=5時間。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.joy_hours`。

## joy_unit_check：元の読書量を検算

条件：20分ごとに8ページの一定速度。

根拠：

得られること：300分では(8/20)×300=120ページ。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.joy_unit_check`。

## joy_exists：条件を満たす量の存在

条件：m=300分、h=5時間。

根拠：

得られること：両方の比例式を同時に満たす。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.joy_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907B.joy_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
