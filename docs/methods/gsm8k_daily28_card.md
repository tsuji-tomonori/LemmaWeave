# 2種類のカード6枚ずつの代金

1.25ドルと1.75ドルのカードを各6枚買った総額を求める。

**取得済み固定GSM8Kの1問。**

- 金額はセント単位の自然数で厳密に扱う。

## card_pair：各種類1枚ずつの代金

条件：価格は125セントと175セント。

根拠：

得られること：1組は300セント。

既習の根拠：組の価格＝各価格の和。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.card_pair`。

## card_cents：6組の代金

条件：1組300セントを6組買う。

根拠：

得られること：合計1800セント。

既習の根拠：総額＝組数×組単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.card_cents`。

## card_dollars：ドルへの換算

条件：100セント＝1ドル。

根拠：

得られること：合計18ドル。

既習の根拠：セント総額＝ドル額×100。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.card_dollars`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912B.card_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
