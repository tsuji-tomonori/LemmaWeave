# 比から所持数を求め支出後の残数を出す

ElsaとAmalieの硬貨比10:45、合計440枚からAmalieが4分の3を使った残数を求める。

**取得済み固定GSM8Kの1問。**

- 比の全体55部分のうち45部分がAmalie。

## ratio_total：比の全体

条件：10部分と45部分を足す。

根拠：

得られること：55部分。

既習の根拠：比と加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.ratio_total`。

## ratio_amalie：Amalie所持数

条件：440枚の45/55。

根拠：

得られること：360枚。

既習の根拠：比例配分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.ratio_amalie`。

## ratio_spent：支出数

条件：360枚の3/4。

根拠：

得られること：270枚。

既習の根拠：分数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.ratio_spent`。

## ratio_left：残数

条件：360から270を引く。

根拠：

得られること：90枚。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.ratio_left`。

## ratio_exists：条件の充足

条件：55、360、270、90を置く。

根拠：

得られること：比、支出、残数条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.ratio_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908B.ratio_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
