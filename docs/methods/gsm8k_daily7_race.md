# 二人の残り3日の必要日平均の平均を求める

各30マイルを走る二人について最初の4日から残り3日の各必要日平均を出し、その平均を求める。

**取得済み固定GSM8Kの1問。**

- Jesseの最初3日は1日平均2/3マイル。

## race_jesse_first：Jesse最初3日

条件：3日間を平均2/3マイル。

根拠：

得られること：合計2マイル。

既習の根拠：平均×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.race_jesse_first`。

## race_jesse_remaining：Jesse残距離

条件：30から最初3日の2と4日目の10を引く。

根拠：

得られること：18マイル。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.race_jesse_remaining`。

## race_jesse_daily：Jesse必要日平均

条件：18マイルを3日で走る。

根拠：

得られること：1日6マイル。

既習の根拠：平均。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.race_jesse_daily`。

## race_mia_first：Mia最初4日

条件：4日間を平均3マイル。

根拠：

得られること：12マイル。

既習の根拠：平均×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.race_mia_first`。

## race_mia_remaining：Mia残距離

条件：30から12を引く。

根拠：

得られること：18マイル。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.race_mia_remaining`。

## race_mia_daily：Mia必要日平均

条件：18マイルを3日で走る。

根拠：

得られること：1日6マイル。

既習の根拠：平均。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.race_mia_daily`。

## race_average：二平均の平均

条件：6と6の算術平均。

根拠：

得られること：1日6マイル。

既習の根拠：算術平均。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.race_average`。

## race_exists：条件の充足

条件：各段階へ2、18、6、12、18、6、6を置く。

根拠：

得られること：全条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.race_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908B.race_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
