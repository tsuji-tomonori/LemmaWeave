# 連続価格の宝くじ賞金

5枚を1ドルから1ドルずつ値上げして売り、4ドルを利益に残した後の賞金を求める。

**取得済み固定GSM8Kの1問。**

- 各後続価格は直前価格より1ドル高い。

## lottery_prices：5枚の価格

条件：最初は1ドルで、以後は直前より1ドル高い。

根拠：

得られること：価格は1,2,3,4,5ドル。

既習の根拠：次項＝前項＋1の逐次関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.lottery_prices`。

## lottery_revenue：売上合計

条件：5枚の価格は1,2,3,4,5ドル。

根拠：

得られること：売上は15ドル。

既習の根拠：総売上＝各販売価格の和。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.lottery_revenue`。

## lottery_prize：賞金

条件：売上15ドルから利益4ドルを残す。

根拠：

得られること：賞金は11ドル。

既習の根拠：売上＝利益＋賞金。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.lottery_prize`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912B.lottery_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
