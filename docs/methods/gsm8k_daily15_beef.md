# 牛ひき肉の第3便の荷数

4ポンド入りの牛ひき肉を第1便10個、第2便7個、全体100ポンド受け取ったとき、第3便の個数を求める。

**取得済み固定GSM8Kの1問。**

- 全便が同じ4ポンド包装である。

## beef_first_weight：第1便の重量

条件：1個4ポンドで10個。

根拠：

得られること：第1便は10×4=40ポンド。

既習の根拠：単位量と個数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.beef_first_weight`。

## beef_second_weight：第2便の重量

条件：1個4ポンドで7個。

根拠：

得られること：第2便は7×4=28ポンド。

既習の根拠：単位量と個数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.beef_second_weight`。

## beef_known_weight：先の2便の重量

条件：第1便40ポンド、第2便28ポンド。

根拠：

得られること：先の2便は40+28=68ポンド。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.beef_known_weight`。

## beef_remaining_weight：第3便の重量

条件：全体100ポンドのうち68ポンドが先に届いた。

根拠：

得られること：第3便は100-68=32ポンド。

既習の根拠：全体から既知部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.beef_remaining_weight`。

## beef_third_packages：第3便の個数

条件：32ポンドを1個4ポンドで包装する。

根拠：

得られること：第3便は32÷4=8個。

既習の根拠：全体量を単位量で割る。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.beef_third_packages`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909D.beef_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
