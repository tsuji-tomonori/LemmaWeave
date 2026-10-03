# スニーカー代のための収入

芝刈り、フィギュア販売、時給労働の収入がちょうど靴代になるとき価格を求める。

**取得済み固定GSM8Kの1問。**

- 3種類の収入をすべて靴代に充て、収入が価格をちょうど覆う。

## sneakers_income：収入ごとの金額

条件：芝刈り3件を各8ドル、フィギュア2個を各9ドル、10時間を時給5ドルで働く。

根拠：

得られること：収入は順に24ドル、18ドル、50ドル。

既習の根拠：単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.sneakers_income`。

## sneakers_total：靴の価格

条件：3種類の収入が靴代をちょうど覆う。

根拠：

得られること：価格は24+18+50=92ドル。

既習の根拠：収入の合計。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.sneakers_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917D.sneakers_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
