# 1時間分のパイ販売利益

12枚のパイを各3切れにし、1切れ4ドルですべて売った売上から製造費を引く。

**取得済み固定GSM8Kの1問。**

- how much money would it makeを、全売上から製造費を引いた利益として参照解と照合した。

## pie_pieces：販売する切れ数

条件：1時間に12枚、1枚を3切れにし、全切れを売る。

根拠：

得られること：36切れを販売する。

既習の根拠：枚数×1枚当たり切れ数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.pie_pieces`。

## pie_revenue：売上

条件：36切れを1切れ400セントで売る。

根拠：

得られること：売上は14400セント。

既習の根拠：販売数×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.pie_revenue`。

## pie_cost：製造費

条件：12枚を1枚50セントで作る。

根拠：

得られること：製造費は600セント。

既習の根拠：枚数×1枚当たり費用。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.pie_cost`。

## pie_profit_cents：セントでの利益

条件：売上14400セントは費用600セントと利益の和。

根拠：

得られること：利益は13800セント。

既習の根拠：売上から費用を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.pie_profit_cents`。

## pie_profit_dollars：ドルでの利益

条件：100セントが1ドル。

根拠：

得られること：利益は138ドル。

既習の根拠：通貨単位の換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.pie_profit_dollars`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911D.pie_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
