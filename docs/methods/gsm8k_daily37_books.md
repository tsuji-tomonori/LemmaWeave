# 4倍の蔵書数を合計する

Stuが9冊、AlbertがStuの4倍の本を持つとき、2人の合計冊数を求める。

**取得済み固定GSM8Kの1問。**

- 4倍はStuの冊数9に倍率4を掛ける意味とする。

## books_albert：Albertの冊数を求める

条件：AlbertはStuの4倍で、Stuは9冊。

根拠：

得られること：Albertは4×9=36冊。

既習の根拠：倍の量は基準量に倍率を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.books_albert`。

## books_total：2人分を合計する

条件：Stuの9冊とAlbertの36冊は別々の蔵書。

根拠：

得られること：合計は9+36=45冊。

既習の根拠：重ならない二つの個数を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.books_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914C.books_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
