# 週間トレーニング時間

筋力トレーニングとボクシング練習の週間合計時間を求める。

**取得済み固定GSM8Kの1問。**

- 1.5時間を3 half-hoursとして整数で表し、4回で12 half-hours=6時間とする。

## boxing_parts：種目別の練習時間

条件：筋力トレーニングは1時間を週3回、ボクシングは1.5時間を週4回。

根拠：

得られること：筋力は3時間、ボクシングは6時間。

既習の根拠：回数×時間。1.5時間は3 half-hours。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.boxing_parts`。

## boxing_total：週間合計

条件：種目別の時間が3時間と6時間。

根拠：

得られること：週間合計は9時間。

既習の根拠：時間の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.boxing_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917D.boxing_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
