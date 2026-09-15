# 購入代金と残金から雪かき件数を逆算

95ドルの靴を買い15ドル残る。3か月の小遣いは月5ドル、芝刈り4件は各15ドル。雪かき各7ドルを何件したか？

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- 記された3か月の収入を全額貯蓄し、それ以外の元金・収入・支出はない通常の文章題モデル。
- 件数を自然数で扱う。

## shoes_allowance：小遣い

条件：月5ドルを3か月全額貯める。

根拠：

得られること：a=15ドル。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.shoes_allowance`。

## shoes_mowing：芝刈り

条件：4件×15ドル。

根拠：

得られること：m=60ドル。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.shoes_mowing`。

## shoes_saved：購入前の資金

条件：靴95ドルと残金15ドルへ分割される。

根拠：

得られること：a+m+s=95+15=110ドル。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.shoes_saved`。

## shoes_shoveling：雪かき収入

条件：資金110のうち小遣い15、芝刈り60。

根拠：

得られること：s=110−15−60=35ドル。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.shoes_shoveling`。

## shoes_drives：件数

条件：雪かき1件7ドル、7d=35。

根拠：

得られること：d=5件。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.shoes_drives`。

## shoes_exists：充足例

条件：小遣い15、芝刈り60、雪かき35、5件。

根拠：

得られること：収入110=靴95+残金15で、全条件を満たす。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.shoes_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907.shoes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
