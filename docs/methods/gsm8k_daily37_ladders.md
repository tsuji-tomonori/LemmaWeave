# はしご昇降距離をインチへ換算する

30フィートのはしごを20回、4フィート短いはしごを15回登った合計距離をインチで求める。

**取得済み固定GSM8Kの1問。**

- 1回のclimbedははしごの全長を一方向に登る距離とする。

## ladders_individual：各人のフィート距離を求める

条件：Keatonは30フィートを20回、Reeceは30-4=26フィートを15回登る。

根拠：

得られること：それぞれ600フィートと390フィート。

既習の根拠：距離×回数と差の計算を使う。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.ladders_individual`。

## ladders_total_feet：フィート単位で合計する

条件：二人の登った距離を同じフィート単位で足す。

根拠：

得られること：600+390=990フィート。

既習の根拠：同じ単位の量を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.ladders_total_feet`。

## ladders_inches：インチへ換算する

条件：1フィート=12インチ。

根拠：

得られること：990×12=11,880インチ。

既習の根拠：単位換算係数を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.ladders_inches`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914C.ladders_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
