# 読書後の残りページ

全14冊、各200ページのシリーズを1か月目に4冊、2か月目に残りの半分読んだ後の残りページを求める。

**取得済み固定GSM8Kの1問。**

- 各冊200ページで冊数単位の半分が整数になる。

## reading_after_first：1か月目後の冊数

条件：14冊中4冊を読む。

根拠：

得られること：残りは10冊。

既習の根拠：全体＝既読＋残り。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.reading_after_first`。

## reading_second：2か月目の冊数

条件：残り10冊の半分を読む。

根拠：

得られること：2か月目は5冊読む。

既習の根拠：2×半分＝全体。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.reading_second`。

## reading_remaining_books：残り冊数

条件：最初の4冊と次の5冊を読んだ。

根拠：

得られること：未読は5冊。

既習の根拠：全冊数＝既読冊数＋未読冊数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.reading_remaining_books`。

## reading_remaining_pages：残りページ

条件：未読5冊、各200ページ。

根拠：

得られること：残りは1000ページ。

既習の根拠：総ページ＝冊数×1冊のページ数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.reading_remaining_pages`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912B.reading_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
