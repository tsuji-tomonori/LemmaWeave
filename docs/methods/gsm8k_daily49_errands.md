# 職場までの残りブロック

店、画廊、職場までの全行程から歩き済み5ブロックを引く。

**取得済み固定GSM8Kの1問。**

- 11、6、8ブロックは順に進む同一路程の区間。

## errands_total：全行程

条件：3区間が11、6、8ブロック。

根拠：

得られること：全行程は25ブロック。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.errands_total`。

## errands_remaining：残りの行程

条件：25ブロックのうち5ブロックを歩いた。

根拠：

得られること：残り20ブロック。

既習の根拠：差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.errands_remaining`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917E.errands_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
