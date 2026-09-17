# 5日間のジョギング消費カロリー

毎晩100フィートを5周走り、5日間で25フィート当たり1カロリー消費するとき総量を求める。

**取得済み固定GSM8Kの1問。**

- 問題が指定する期間は5日であり、参照解答中のweekという語は5日間として扱う。

## jogging_distance：5日間の走行距離

条件：1周100フィートを1日5周、5日間走る。

根拠：

得られること：1日500フィート、5日で2500フィート。

既習の根拠：周回数×距離×日数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.jogging_distance`。

## jogging_calories：消費カロリー

条件：25フィート走るごとに1カロリーを消費する。

根拠：

得られること：2500÷25=100カロリー。

既習の根拠：総距離÷単位距離。割り切れる条件。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.jogging_calories`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917D.jogging_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
