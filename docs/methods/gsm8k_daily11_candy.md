# 販売個数の倍率から売上差を求める

1本2ドルの菓子をMarvinが35本、Tinaがその3倍売ったとき、Tinaの売上が何ドル多いか求める。

**取得済み固定GSM8Kの1問。**


## candy_tina_bars：Tinaの販売本数

条件：Marvinの35本の3倍を売る。

根拠：

得られること：Tinaは105本。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.candy_tina_bars`。

## candy_marvin：Marvinの売上

条件：35本を1本2ドルで売る。

根拠：

得られること：売上は70ドル。

既習の根拠：単価×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.candy_marvin`。

## candy_tina：Tinaの売上

条件：105本を1本2ドルで売る。

根拠：

得られること：売上は210ドル。

既習の根拠：単価×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.candy_tina`。

## candy_difference：売上差

条件：Tina 210ドル、Marvin 70ドル。

根拠：

得られること：差は210-70=140ドル。

既習の根拠：差の減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.candy_difference`。

## candy_exists：条件の充足

条件：本数105、売上70と210、差140と置く。

根拠：

得られること：倍率、単価、差の条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.candy_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908F.candy_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
