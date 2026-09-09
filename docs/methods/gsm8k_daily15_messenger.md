# 配達総数と倍率から食事数を求める

荷物が食事の8倍で合計27件のとき、食事の配達数を求める。

**取得済み固定GSM8Kの1問。**


## messenger_equation：食事数だけの式

条件：荷物は食事の8倍で、食事と荷物の合計は27。

根拠：

得られること：食事数をmとするとm+8m=9m=27。

既習の根拠：同類項の整理。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.messenger_equation`。

## messenger_meals：食事の配達数

条件：9m=27。

根拠：

得られること：両辺を9で割りm=3。

既習の根拠：一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.messenger_meals`。

## messenger_packages：荷物数の照合

条件：食事3件の8倍が荷物。

根拠：

得られること：荷物は24件で、合計27件と一致する。

既習の根拠：乗法と検算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.messenger_packages`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909D.messenger_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
