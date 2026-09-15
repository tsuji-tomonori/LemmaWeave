# 芝刈り代とチップの総収入を求める

1件33ドルで16件の芝を刈り、3人から各10ドルのチップを得た総収入を求める。

**取得済み固定GSM8Kの1問。**

- 基本料金とチップを別に集計する。

## lawn_base：基本料金

条件：16件を各33ドルで刈る。

根拠：

得られること：528ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.lawn_base`。

## lawn_tips：チップ

条件：3人が各10ドル渡す。

根拠：

得られること：30ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.lawn_tips`。

## lawn_total：総収入

条件：528ドルと30ドルを足す。

根拠：

得られること：558ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.lawn_total`。

## lawn_exists：条件の充足

条件：528、30、558ドルを置く。

根拠：

得られること：料金、チップ、合計条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.lawn_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908B.lawn_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
