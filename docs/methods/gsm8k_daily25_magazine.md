# 雑誌購読の割引額

18か月の月2号すべてに25セント割引を適用した差額を求める。

**取得済み固定GSM8Kの1問。**

- 端数を避けるため金額をセントで計算する。

## magazine_issues：発行号数

条件：18か月、月2号。

根拠：

得られること：36号。

既習の根拠：月数×月当たり号数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.magazine_issues`。

## magazine_discount_cents：セントでの割引額

条件：36号の各号が25セント引き。

根拠：

得られること：900セント安い。

既習の根拠：対象数×1対象当たり割引。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.magazine_discount_cents`。

## magazine_discount_dollars：ドルへの換算

条件：100セントが1ドル。

根拠：

得られること：9ドル安い。

既習の根拠：通貨単位の換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.magazine_discount_dollars`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911D.magazine_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
