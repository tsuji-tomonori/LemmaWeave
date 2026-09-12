# 20%減少後に2倍量を受け取る

25個のビー玉の20%を失い、その後の所持数の2倍を友人から受け取った最終数を求める。

**取得済み固定GSM8Kの1問。**


## marbles_lost：失った個数

条件：25個の20%を失う。

根拠：

得られること：25×20÷100=5個を失う。

既習の根拠：割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.marbles_lost`。

## marbles_after_loss：失った後の個数

条件：25個から5個を失う。

根拠：

得られること：20個残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.marbles_after_loss`。

## marbles_gift：受け取った個数

条件：友人が失った後の20個の2倍をくれる。

根拠：

得られること：40個を受け取る。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.marbles_gift`。

## marbles_final：最終所持数

条件：残った20個に受け取った40個を加える。

根拠：

得られること：最終的に60個。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.marbles_final`。

## marbles_exists：条件の充足

条件：損失5、残り20、贈与40、最終60と置く。

根拠：

得られること：割合、倍量、最終合計の条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.marbles_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908F.marbles_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
