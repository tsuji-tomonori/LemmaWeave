# 30人を収容するホテル室数

1室に2人用ベッド2台と1人用ソファがある。30人に必要な室数を求める。

**取得済み固定GSM8Kの1問。**

- 30は1室定員5で割り切れる。

## hotel_capacity：1室の定員

条件：2人用ベッド2台と1人用ソファ。

根拠：

得られること：定員は2×2+1=5人。

既習の根拠：乗法と加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.hotel_capacity`。

## hotel_rooms：必要室数

条件：30人を1室5人で収容する。

根拠：

得られること：30÷5=6室で過不足なく収容できる。

既習の根拠：等分除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.hotel_rooms`。

## hotel_exists：条件の充足

条件：定員5、室数6と置く。

根拠：

得られること：6×5=30で全員を収容する。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.hotel_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909B.hotel_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
