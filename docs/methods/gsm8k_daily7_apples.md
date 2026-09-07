# 差と半分からリンゴの個数を求める

Marthaが68個、TimがMarthaより30個少なく、HarryがTimの半分のリンゴを持つとき、Harryの個数を求める。

**取得済み固定GSM8Kの1問。**

- 先にTimの個数を差で求め、その半分をHarryの個数とする。

## apples_tim：Timの個数

条件：Marthaの68個より30個少ない。

根拠：

得られること：38個。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.apples_tim`。

## apples_harry：Harryの個数

条件：Timの38個の半分。

根拠：

得られること：19個。

既習の根拠：2で割る計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.apples_harry`。

## apples_exists：条件の充足

条件：Timを38個、Harryを19個と置く。

根拠：

得られること：差と半分の条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.apples_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908B.apples_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
