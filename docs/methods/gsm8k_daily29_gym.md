# 二つのジム会費と倍率表現の条件付き解答

月10ドル・入会金50ドルのジムと『3 times more expensive』なジムの初年度総額を求める。

**取得済み固定GSM8Kの1問。曖昧な倍率表現を条件付きで解答した。**

- 全体3倍なら650ドル、元より3倍分高い全体4倍なら810ドル。

## gym_threefold_total：全体3倍と読む場合

条件：高いジムの月額を10ドルの3倍30ドル、入会金をその4か月分と読む。

根拠：

得られること：安い方170ドル、高い方480ドル、合計650ドル。

既習の根拠：初年度額＝12×月額＋入会金。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.gym_threefold_total`。

## gym_fourfold_total：3倍分高いと読む場合

条件：元の価格にその3倍分を加え、全体4倍の月40ドルと読む。

根拠：

得られること：合計810ドルとなり650ドルと異なる。

既習の根拠：増加後＝元＋3×元＝4×元。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.gym_fourfold_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912C.gym_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
