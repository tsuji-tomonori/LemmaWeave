# 一定成長後の身長

現在20インチで毎年3インチ成長するとき、10年後の身長を求める。

**取得済み固定GSM8Kの1問。**

- 一定の年成長量が10年間続くモデル。

## growth_gained：10年間の成長量

条件：毎年3インチを10年間。

根拠：

得られること：増加は3×10=30インチ。

既習の根拠：一定量の繰返しを乗法で表す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.growth_gained`。

## growth_final：10年後の身長

条件：現在20インチ、増加30インチ。

根拠：

得られること：10年後は20+30=50インチ。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.growth_final`。

## growth_exists：条件の充足

条件：成長量30、最終50と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.growth_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909B.growth_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
