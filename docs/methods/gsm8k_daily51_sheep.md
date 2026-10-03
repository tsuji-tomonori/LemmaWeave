# 野外にいる羊の数

囲いの81頭が全体の90%で、残る10%が野外にいるときの頭数を求める。

**取得済み固定GSM8Kの1問。**

- 81頭を全体の90%とし、野外の羊を全体との差で表す。

## sheep_total：羊の総数

条件：81頭が全体の90%なので、10×81＝9×総数。

根拠：

得られること：総数は90頭。

既習の根拠：割合の比例式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.sheep_total`。

## sheep_wild：野外の羊

条件：総数90頭から囲いの81頭を引く。

根拠：

得られること：野外には9頭いる。

既習の根拠：差の関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.sheep_wild`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918B.sheep_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
