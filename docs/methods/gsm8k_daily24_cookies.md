# 手元に残すクッキー

3種類のクッキーについて焼いたダース数と配ったダース数から、手元の総個数を求める。

**取得済み固定GSM8Kの1問。**

- 1ダース=12個、0.5ダース=6個として個数へ統一する。

## cookies_oat：オートミールレーズン

条件：36個焼き24個配る。

根拠：

得られること：12個残る。

既習の根拠：ダース換算と差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.cookies_oat`。

## cookies_sugar：シュガー

条件：24個焼き1.5ダース=18個配る。

根拠：

得られること：6個残る。

既習の根拠：半ダース換算と差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.cookies_sugar`。

## cookies_chocolate：チョコチップ

条件：48個焼き2.5ダース=30個配る。

根拠：

得られること：18個残る。

既習の根拠：半ダース換算と差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.cookies_chocolate`。

## cookies_total：手元の総個数

条件：種類別の残り12個、6個、18個を加える。

根拠：

得られること：合計36個。

既習の根拠：排反な種類別個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911C.cookies_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911C.cookies_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
