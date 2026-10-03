# 新聞購読料の45%引き

通常80ドルの1年購読を45%引きにした価格を求める。

**取得済み固定GSM8Kの1問。**


## newspaper_discount：値引額

条件：通常80ドルの45%を値引く。

根拠：

得られること：値引額は80×45/100=36ドル。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.newspaper_discount`。

## newspaper_cost：割引後価格

条件：80ドルから36ドルを引く。

根拠：

得られること：割引後は44ドル。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.newspaper_cost`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909D.newspaper_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
