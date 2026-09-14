# 3枚のCDの再生時間を合計する

1.5時間のCDが2枚、各短編の2倍の長さのCDが1枚あるとき、合計時間を求める。

**取得済み固定GSM8Kの1問。**

- 最後のCDは1.5時間の2倍と読む。

## cds_parts：長い1枚と短い2枚分を求める

条件：短いCDは各3/2時間で2枚、最後はその2倍。

根拠：

得られること：最後は2×3/2=3時間、短い2枚も2×3/2=3時間。

既習の根拠：同じ長さの合計は個数と1個分の積で表せる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.cds_parts`。

## cds_combined：3枚分を合計する

条件：短い2枚が3時間、長い1枚が3時間。

根拠：

得られること：合計は3+3=6時間。

既習の根拠：各CDの時間を重複なく加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.cds_combined`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914D.cds_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
