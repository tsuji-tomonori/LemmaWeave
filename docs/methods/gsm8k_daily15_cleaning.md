# 3人の週間掃除時間

Richard、Cory、Blakeが各自の部屋を週2回掃除する延べ時間を求める。

**取得済み固定GSM8Kの1問。**


## cleaning_cory：Coryの時間

条件：Richardは22分、Coryは3分多い。

根拠：

得られること：Coryは25分。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.cleaning_cory`。

## cleaning_blake：Blakeの時間

条件：BlakeはCoryより4分速い。

根拠：

得られること：25-4=21分。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.cleaning_blake`。

## cleaning_one_session：3人1回分

条件：Richard22分、Cory25分、Blake21分。

根拠：

得られること：1回分は22+25+21=68分。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.cleaning_one_session`。

## cleaning_weekly：週間合計

条件：3人分68分を週2回行う。

根拠：

得られること：68×2=136分。

既習の根拠：反復回数との乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.cleaning_weekly`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909D.cleaning_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
