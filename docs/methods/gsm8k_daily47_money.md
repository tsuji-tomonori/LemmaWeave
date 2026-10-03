# JamesとAliの所持金

合計250ドル、差40ドルからJamesの所持金を求める。

**取得済み固定GSM8Kの1問。**

- JamesはAliより40ドル多い。

## money_ali：Aliの所持金

条件：James=Ali+40、両者の合計は250。

根拠：

得られること：Aliは105ドル。

既習の根拠：和と差の一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.money_ali`。

## money_james：Jamesの所持金

条件：Aliは105ドルで、Jamesは40ドル多い。

根拠：

得られること：Jamesは145ドル。

既習の根拠：差の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.money_james`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917C.money_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
