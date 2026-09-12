# 三品の支出を合計して残金を求める

95ドルからオレンジ14ドル、リンゴ25ドル、菓子6ドルを支払った残金を求める。

**取得済み固定GSM8Kの1問。**

- 列挙された三品以外の支出はない。

## shopping_spent：支出を合計する

条件：支出は14ドル、25ドル、6ドルの三品である。

根拠：

得られること：支出合計は45ドル。

既習の根拠：互いに異なる品目の代金を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.shopping_spent`。

## shopping_remaining：残金を求める

条件：95ドルのうち45ドルを支払った。

根拠：

得られること：残金は50ドル。

既習の根拠：初期額＝支出＋残額。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.shopping_remaining`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912D.shopping_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
