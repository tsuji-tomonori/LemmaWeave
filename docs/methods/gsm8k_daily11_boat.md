# 1日当たりの運航数から2日間の輸送人数を求める

1日4便、1便最大12人の船が2日間に輸送できる最大人数を求める。

**取得済み固定GSM8Kの1問。**

- 各便が上限12人まで乗るときの最大輸送人数を数える。

## boat_per_day：1日の輸送人数

条件：1日に4便あり、各便に最大12人乗る。

根拠：

得られること：1日に最大4×12=48人を輸送できる。

既習の根拠：等しい組の反復を乗法で数える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.boat_per_day`。

## boat_total：2日間の輸送人数

条件：1日48人を同じ条件で2日間輸送する。

根拠：

得られること：最大48×2=96人を輸送できる。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.boat_total`。

## boat_exists：条件の充足

条件：便数4、定員12、日数2、1日48人、合計96人と置く。

根拠：

得られること：原文の全等式を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.boat_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908F.boat_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
