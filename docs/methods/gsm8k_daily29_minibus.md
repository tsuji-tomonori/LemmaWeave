# 当初人数と参加人数の差を求める

割当18人中男子8人で、当日は男女同数だったとき欠席女子数を求める。

**取得済み固定GSM8Kの1問。**

- 男子は全員参加したという原文の因果関係を用いる。

## minibus_initial_girls：当初の女子数

条件：割当18人のうち男子が8人。

根拠：

得られること：当初の女子は10人。

既習の根拠：全体＝男子＋女子。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.minibus_initial_girls`。

## minibus_attending_girls：参加女子数

条件：当日の男女が同数で男子は8人。

根拠：

得られること：参加女子は8人。

既習の根拠：等しい二量の置換。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.minibus_attending_girls`。

## minibus_absent：欠席女子数

条件：当初10人のうち8人が参加。

根拠：

得られること：欠席女子は2人。

既習の根拠：当初人数＝参加人数＋欠席人数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.minibus_absent`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912C.minibus_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
