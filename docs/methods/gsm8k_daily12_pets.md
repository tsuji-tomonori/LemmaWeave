# 犬・猫・魚の合計を求める

犬2匹、猫3匹がおり、魚は犬と猫の合計の2倍いる。ペットの総数を求める。

**取得済み固定GSM8Kの1問。**

- 魚の2倍の基準は犬と猫を合わせた匹数。

## pets_nonfish：犬と猫の合計

条件：犬2匹、猫3匹。

根拠：

得られること：犬と猫は2+3=5匹。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.pets_nonfish`。

## pets_fish：魚の数

条件：魚は犬と猫の合計の2倍。

根拠：

得られること：魚は2×5=10匹。

既習の根拠：倍の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.pets_fish`。

## pets_total：ペットの総数

条件：犬と猫が5匹、魚が10匹。

根拠：

得られること：合計は15匹。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.pets_total`。

## pets_exists：条件の充足

条件：犬2、猫3、非魚5、魚10、合計15と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.pets_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909A.pets_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
