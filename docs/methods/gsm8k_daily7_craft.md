# 販売代金とチップから手元の金額を求める

12ドルの工芸品を3個売り7ドルのチップを得た後、18ドルを入金したときの手元の現金を求める。

**取得済み固定GSM8Kの1問。**

- 売上、チップ後、入金後を順に追う。

## craft_sales：工芸品の売上

条件：3個を各12ドルで売る。

根拠：

得られること：36ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.craft_sales`。

## craft_with_tip：チップ後の現金

条件：36ドルに7ドルを加える。

根拠：

得られること：43ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.craft_with_tip`。

## craft_left：入金後の手元金

条件：43ドルから入金した18ドルを引く。

根拠：

得られること：25ドル。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.craft_left`。

## craft_exists：条件の充足

条件：36、43、25ドルを置く。

根拠：

得られること：売上、チップ、入金の条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.craft_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908B.craft_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
