# 銅イオンなしで検査したビーカー

1検査3滴で45滴を使い、銅入り8個を全て見つけたとき銅なしで検査した個数を求める。

**取得済み固定GSM8Kの1問。**

- 各ビーカーを一度、各3滴で検査したと読む。

## beakers_tested：検査総数

条件：1個当たり3滴で45滴を使う。

根拠：

得られること：15個を検査した。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.beakers_tested`。

## beakers_non_copper：銅なしの検査数

条件：検査15個のうち銅入り8個を全て発見した。

根拠：

得られること：銅なしは15−8=7個。

既習の根拠：排反分類の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.beakers_non_copper`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911B.beakers_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
