# 残金から本の平均価格を求める

236ドルから6冊購入後14ドル残ったときの1冊平均を求める。

**取得済み固定GSM8Kの1問。**

- 他の支出はなく、平均価格は総支出を6冊で割った値である。

## books_spent：本への支出を求める

条件：236ドルのうち購入後に14ドル残った。

根拠：

得られること：本への支出は222ドル。

既習の根拠：初期額=支出+残金から差を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.books_spent`。

## books_average：平均価格を求める

条件：6冊の合計価格が222ドル。

根拠：

得られること：1冊平均は37ドル。

既習の根拠：平均=合計÷個数を用い、222=6×37を確かめる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.books_average`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913B.books_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
