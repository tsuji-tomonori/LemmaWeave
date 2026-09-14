# 一日の支出を合計する

モール250ドル、映画3本各24ドル、豆20袋各1.25ドルの一日総支出を求める。

**取得済み固定GSM8Kの1問。**

- 金額はすべてセントで表し、各表示価格以外の費用はない。

## spending_parts：映画代と豆代を求める

条件：映画3本は各2400セント、豆20袋は各125セント。

根拠：

得られること：映画代7200セント、豆代2500セント。

既習の根拠：単価×個数を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.spending_parts`。

## spending_total：三つの支出を合計する

条件：モール25000セント、映画7200セント、豆2500セント。

根拠：

得られること：合計34700セント、すなわち347ドル。

既習の根拠：同じ単位にそろえた支出を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.spending_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914C.spending_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
