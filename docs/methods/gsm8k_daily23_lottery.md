# 借金返済後の残金

100ドルから3人への返済額を引いた残金を求める。

**取得済み固定GSM8Kの1問。**

- HelenはColinの2倍、BenedictはHelenの半分。

## lottery_helen：Helenへの返済

条件：Colinへ20ドル、Helenへその2倍を払う。

根拠：

得られること：Helenへ40ドル。

既習の根拠：倍率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.lottery_helen`。

## lottery_benedict：Benedictへの返済

条件：BenedictへHelenの半分を払う。

根拠：

得られること：20ドル。

既習の根拠：半分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.lottery_benedict`。

## lottery_paid：返済総額

条件：3人への返済を合計する。

根拠：

得られること：20+40+20=80ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.lottery_paid`。

## lottery_remaining：残金

条件：賞金100ドルから80ドルを返済する。

根拠：

得られること：20ドル残る。

既習の根拠：差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.lottery_remaining`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911B.lottery_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
