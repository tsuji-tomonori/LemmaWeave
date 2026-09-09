# 渡した後のクレヨン数

緑5本と青8本から緑3本、青1本を渡した残数を求める。

**取得済み固定GSM8Kの1問。**


## crayons_initial：最初の総数

条件：緑5本、青8本を持つ。

根拠：

得られること：最初は5+8=13本。

既習の根拠：排反な色別個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.crayons_initial`。

## crayons_given：渡した総数

条件：緑3本、青1本を渡す。

根拠：

得られること：渡したのは3+1=4本。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.crayons_given`。

## crayons_left：残数

条件：13本から4本を渡した。

根拠：

得られること：13-4=9本残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.crayons_left`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909D.crayons_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
