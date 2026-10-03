# 25 times moreの条件付き解答

Kristoffが85枚でRikuが『25 times more』持つときの枚数を、語句の2通りの解釈で求める。

**取得済み固定GSM8Kの1問。曖昧な倍率表現を反例付きで解答した。**

- 25倍そのものなら2125枚。元より25倍分多いという参照解の解釈なら26倍で2210枚。

## stickers_as_many：25倍と読む場合

条件：『25 times more』を『25 times as many』と同じ全体25倍と読む。

根拠：

得られること：Rikuは2125枚。

既習の根拠：全体＝倍率×基準枚数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.stickers_as_many`。

## stickers_more_than：25倍分多いと読む場合

条件：元の85枚に、その25倍分を追加するので全体26倍と読む。

根拠：

得られること：Rikuは2210枚。2125枚と異なり、原文だけでは一意でない。

既習の根拠：全体＝(1＋追加倍率)×基準枚数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.stickers_more_than`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912B.stickers_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
