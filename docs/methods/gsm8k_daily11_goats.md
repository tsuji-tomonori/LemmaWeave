# 差から2人のヤギの合計を求める

Washingtonが140頭、Paddingtonが40頭多いとき、2人のヤギの合計を求める。

**取得済み固定GSM8Kの1問。**


## goats_paddington：Paddingtonの頭数

条件：Washingtonは140頭で、Paddingtonは40頭多い。

根拠：

得られること：Paddingtonは140+40=180頭。

既習の根拠：差の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.goats_paddington`。

## goats_total：2人の合計

条件：Washingtonが140頭、Paddingtonが180頭。

根拠：

得られること：合計は140+180=320頭。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.goats_total`。

## goats_exists：条件の充足

条件：頭数を140、180、320と置く。

根拠：

得られること：差と合計の全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.goats_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908F.goats_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
