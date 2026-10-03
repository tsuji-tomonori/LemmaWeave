# 贈り物代と還付

シャツ3枚、ネックレス2個、ゲーム1本の代金から12ドルの還付を引く。

**取得済み固定GSM8Kの1問。**

- 品目別代金を合算してから還付を引く。

## gifts_shirts：シャツ代

条件：1枚26ドルのシャツを3枚買う。

根拠：

得られること：シャツ代は78ドル。

既習の根拠：単価と個数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.gifts_shirts`。

## gifts_necklaces：ネックレス代

条件：1個83ドルのネックレスを2個買う。

根拠：

得られること：ネックレス代は166ドル。

既習の根拠：単価と個数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.gifts_necklaces`。

## gifts_subtotal：還付前合計

条件：シャツ78ドル、ネックレス166ドル、ゲーム90ドルを合算する。

根拠：

得られること：還付前は334ドル。

既習の根拠：異なる品目の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.gifts_subtotal`。

## gifts_total：還付後合計

条件：334ドルから12ドルの還付を引く。

根拠：

得られること：答えは322ドル。

既習の根拠：代金から還付額を引く減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.gifts_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910D.gifts_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
