# 配った個数と残数から購入総数を求める

Toddに4個、Alishaにその2倍、BobbyにAlishaの4倍より5個少なく配り、6個残ったときの購入数を求める。

**取得済み固定GSM8Kの1問。**

- 5 less than four times as manyの基準は直前のAlishaへの個数。

## gumballs_alisha：Alishaへの個数

条件：Toddへの4個の2倍。

根拠：

得られること：8個。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.gumballs_alisha`。

## gumballs_bobby：Bobbyへの個数

条件：Alishaへの8個の4倍より5個少ない。

根拠：

得られること：27個。

既習の根拠：乗法と減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.gumballs_bobby`。

## gumballs_given：配った総数

条件：Todd 4、Alisha 8、Bobby 27個。

根拠：

得られること：39個を配った。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.gumballs_given`。

## gumballs_total：購入総数

条件：39個を配った後に6個残る。

根拠：

得られること：45個購入した。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.gumballs_total`。

## gumballs_exists：条件の充足

条件：8、27、39、45を各数量に置く。

根拠：

得られること：配布規則と残数を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.gumballs_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908E.gumballs_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
