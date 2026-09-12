# 教科書と用品購入後の残金

960ドルの半分を教科書に使い、その残りの4分の1を学用品に使った後の残金を求める。

**取得済み固定GSM8Kの1問。**

- 学用品の4分の1は初期960ドルでなく、教科書購入後の480ドルが基準。

## books_textbooks：教科書代

条件：960ドルの半分。

根拠：

得られること：480ドル。

既習の根拠：2等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.books_textbooks`。

## books_after_textbooks：教科書購入後

条件：960ドルから480ドルを使う。

根拠：

得られること：480ドル残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.books_after_textbooks`。

## books_supplies：学用品代

条件：残り480ドルの4分の1。

根拠：

得られること：120ドル。

既習の根拠：4等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.books_supplies`。

## books_left：最終残金

条件：480ドルから120ドルを使う。

根拠：

得られること：360ドル残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.books_left`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910B.books_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
