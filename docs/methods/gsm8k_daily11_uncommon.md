# 各パックの割合から珍しいカード数を求める

20枚入りのカードを10パック買い、各パックの4分の1が珍しいカードであるとき、その総数を求める。

**取得済み固定GSM8Kの1問。**


## uncommon_per_pack：1パックの珍しいカード

条件：1パック20枚の4分の1が珍しい。

根拠：

得られること：20÷4=5枚。

既習の根拠：分数の割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.uncommon_per_pack`。

## uncommon_total：10パックの総数

条件：各パック5枚で10パックある。

根拠：

得られること：5×10=50枚。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.uncommon_total`。

## uncommon_exists：条件の充足

条件：1パック5枚、全体50枚と置く。

根拠：

得られること：割合とパック数の条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.uncommon_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908F.uncommon_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
