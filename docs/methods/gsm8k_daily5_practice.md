# 4週間の楽器練習時間を求める

ピアノ20分、バイオリンはその3倍を週6日練習する。4週間の合計時間を求める。

**取得済み固定GSM8Kの1問。**

- 両楽器を各練習日に練習し、問題指定どおり1か月を4週間とする。

## practice_violin：1日のバイオリン時間

条件：ピアノ20分の3倍。

根拠：

得られること：60分。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.practice_violin`。

## practice_daily：1日の合計

条件：ピアノ20分とバイオリン60分を足す。

根拠：

得られること：80分。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.practice_daily`。

## practice_weekly：1週間の合計

条件：1日80分を週6日。

根拠：

得られること：480分。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.practice_weekly`。

## practice_monthly：4週間の合計

条件：1週480分を4週間。

根拠：

得られること：1920分。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.practice_monthly`。

## practice_exists：条件の充足

条件：各段階を60、80、480、1920分と置く。

根拠：

得られること：日、週、月の全条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.practice_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907E.practice_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
