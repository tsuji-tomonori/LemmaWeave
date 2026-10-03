# リンゴ1個の価格

36個をオレンジ・リンゴ・スイカに均等配分し、スイカ1個がリンゴ4個と同額、オレンジ1個50セント、合計66ドルのときリンゴ単価を求める。

**取得済み固定GSM8Kの1問。**

- 4 apples or 1 watermelon for the same priceを、スイカ単価がリンゴ単価の4倍と解釈する。

## apple_each_kind：各種類の個数

条件：36個を3種類へ均等に分ける。

根拠：

得られること：各種類は12個。

既習の根拠：均等配分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.apple_each_kind`。

## apple_orange_cost：オレンジ代

条件：オレンジ12個を1個50セントで買う。

根拠：

得られること：オレンジ代は600セント。

既習の根拠：個数×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.apple_orange_cost`。

## apple_other_cost：リンゴとスイカの代金

条件：合計6600セントはオレンジ代600セントと残る2種類の代金の和。

根拠：

得られること：リンゴとスイカは合わせて6000セント。

既習の根拠：全体から既知の部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.apple_other_cost`。

## apple_price_cents：リンゴ単価

条件：リンゴとスイカは各12個、スイカ単価はリンゴ単価の4倍で、合計6000セント。

根拠：

得られること：リンゴ1個は100セント。

既習の根拠：単価を未知数とする一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.apple_price_cents`。

## apple_dollars：ドルでの価格

条件：100セントが1ドル。

根拠：

得られること：リンゴ1個は1ドル。

既習の根拠：通貨単位の換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.apple_dollars`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911E.apple_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
