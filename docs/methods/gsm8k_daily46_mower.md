# 芝刈り機価格の曖昧な割合表現

2/5 times lessの基準が曖昧なため、参照解と通常の割合解釈を分ける。

**取得済み固定GSM8Kの1問。**

- 参照解は旧価格1800ドルの2/5を加える。通常の『現価格より2/5安い』では旧価格は現価格の3/5。

## mower_reference_unit：参照解の価格

条件：参照解どおり旧価格1800ドルの2/5を値上がり分とする。

根拠：

得られること：増加は720ドル、現価格は2520ドル、4台で10080ドル。

既習の根拠：旧価格を基準とする割合増加。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.mower_reference_unit`。

## mower_two_readings：通常解釈との分離

条件：旧価格が現価格より2/5安いなら旧価格1800ドルは現価格の3/5。

根拠：

得られること：現価格は3000ドル、4台は12000ドルで、参照解10080ドルとは異なる。

既習の根拠：割合の基準量を明示し、曖昧な二解釈を反例で区別する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.mower_two_readings`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917B.mower_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
