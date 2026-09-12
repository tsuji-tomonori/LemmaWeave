# ココナツ味からゼリービーンズ総数を逆算する

全体の4分の3が赤で、その4分の1がココナツ味。ココナツ味750個から総数を求める。

**取得済み固定GSM8Kの1問。**

- 分数を整数等式 red=4×coconut、4×red=3×total として表す。

## jelly_red：赤い豆の個数

条件：ココナツ味750個は赤い豆の4分の1。

根拠：

得られること：赤い豆は750×4=3000個。

既習の根拠：分数の逆算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.jelly_red`。

## jelly_total：全体の個数

条件：赤3000個は全体の4分の3。

根拠：

得られること：全体は3000×4÷3=4000個。

既習の根拠：比例式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.jelly_total`。

## jelly_exists：条件の充足

条件：ココナツ750、赤3000、総数4000と置く。

根拠：

得られること：両方の割合条件を満たす。

既習の根拠：整数等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.jelly_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909A.jelly_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
