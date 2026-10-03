# 3週間後の息止め時間を求める

10秒から2週連続で倍にし、最終週に直前の50%増とした時間を求める。

**取得済み固定GSM8Kの1問。**

- 各週の増加は直前週の値へ順次適用する。

## breath_first_week：1週目の時間を求める

条件：初期10秒を倍にする。

根拠：

得られること：1週目は20秒。

既習の根拠：10×2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.breath_first_week`。

## breath_second_week：2週目の時間を求める

条件：1週目20秒をもう一度倍にする。

根拠：

得られること：2週目は40秒。

既習の根拠：20×2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.breath_second_week`。

## breath_increase：最終週の増加分を求める

条件：直前の40秒から50%増やす。

根拠：

得られること：増加分は20秒。

既習の根拠：40の半分を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.breath_increase`。

## breath_current：現在の時間を求める

条件：40秒へ増加分20秒を足す。

根拠：

得られること：現在は60秒。

既習の根拠：40+20を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.breath_current`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914A.breath_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
