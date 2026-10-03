# ニュース番組の広告時間

30分番組の各番組部分を合計し、残りの広告時間を求める。

**取得済み固定GSM8Kの1問。**

- half-hourを30分とする。

## newscast_accounted：番組部分の合計

条件：国内12分、国際5分、スポーツ5分、天気2分。

根拠：

得られること：広告以外は12+5+5+2=24分。

既習の根拠：互いに重ならない時間の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.newscast_accounted`。

## newscast_ads：広告時間

条件：番組全体30分のうち24分が広告以外。

根拠：

得られること：広告は30−24=6分。

既習の根拠：全体から既知部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.newscast_ads`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917B.newscast_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
