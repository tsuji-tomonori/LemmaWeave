# 同じ倍率の3人分から基準人数の個数を求める

3人で100個のナゲットを食べ、KeelyとKendallがそれぞれAlyssaの2倍食べたとき、Alyssaの個数を求める。

**取得済み固定GSM8Kの1問。**

- 注文した100個を3人で全て食べたと読む。参考解答中のKendall=3Aという文言は原文と式100=5Aに反する誤記で、2Aを採用する。

## nuggets_keely：Keelyの個数

条件：Alyssaの個数をAとし、Keelyはその2倍。

根拠：

得られること：Keelyは2A個。

既習の根拠：倍率の式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.nuggets_keely`。

## nuggets_kendall：Kendallの個数

条件：KendallもAlyssaの2倍。

根拠：

得られること：Kendallは2A個。

既習の根拠：倍率の式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.nuggets_kendall`。

## nuggets_alyssa：Alyssaの個数

条件：A+2A+2A=100で、個数は自然数。

根拠：

得られること：5A=100よりA=20個。

既習の根拠：一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.nuggets_alyssa`。

## nuggets_total：全数条件

条件：3人が注文した100個を全て食べた。

根拠：

得られること：合計は100個。

既習の根拠：問題の等式条件。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.nuggets_total`。

## nuggets_exists：条件の充足

条件：Alyssa 20、他2人を各40、合計100と置く。

根拠：

得られること：各2倍と合計条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.nuggets_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908F.nuggets_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
