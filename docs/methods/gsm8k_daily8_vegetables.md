# 差と倍率から野菜総数を求める

ジャガイモ237個、キュウリは60個少なく、ピーマンはキュウリの2倍のとき総数を求める。

**取得済み固定GSM8Kの1問。**

- 英文の比較基準をジャガイモ→キュウリ、キュウリ→ピーマンの順に読む。

## vegetables_cucumbers：キュウリの個数

条件：237個より60個少ない。

根拠：

得られること：177個。

既習の根拠：差の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.vegetables_cucumbers`。

## vegetables_peppers：ピーマンの個数

条件：キュウリ177個の2倍。

根拠：

得られること：354個。

既習の根拠：倍の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.vegetables_peppers`。

## vegetables_total：野菜総数

条件：237、177、354個を合計する。

根拠：

得られること：768個。

既習の根拠：互いに別種の個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.vegetables_total`。

## vegetables_exists：条件の充足

条件：177、354、768個を置く。

根拠：

得られること：差、倍率、総数条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.vegetables_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908C.vegetables_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
