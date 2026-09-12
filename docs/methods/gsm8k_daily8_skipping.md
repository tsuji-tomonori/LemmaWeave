# 4回の跳躍数から平均を求める

Samが各回16回跳び、Jeffの各回が差・半分で与えられるとき、Jeffの4回平均を求める。

**取得済み固定GSM8Kの1問。**

- 各回の比較方向を個別に読み、総数を4で割る。

## skipping_round1：第1回のJeff

条件：SamがJeffより1回多く、Samは16回。

根拠：

得られること：Jeffは15回。

既習の根拠：比較文から差を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.skipping_round1`。

## skipping_round2：第2回のJeff

条件：JeffはSamより3回少なく、Samは16回。

根拠：

得られること：Jeffは13回。

既習の根拠：差の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.skipping_round2`。

## skipping_round3：第3回のJeff

条件：JeffはSamより4回多く、Samは16回。

根拠：

得られること：Jeffは20回。

既習の根拠：差の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.skipping_round3`。

## skipping_round4：第4回のJeff

条件：JeffはSamの半分で、Samは16回。

根拠：

得られること：Jeffは8回。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.skipping_round4`。

## skipping_total：Jeffの総跳躍数

条件：15、13、20、8回を足す。

根拠：

得られること：56回。

既習の根拠：4回分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.skipping_total`。

## skipping_average：1回当たり平均

条件：合計56回を4回で割る。

根拠：

得られること：平均14回。

既習の根拠：算術平均＝合計÷個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.skipping_average`。

## skipping_exists：条件の充足

条件：15、13、20、8、56、14を置く。

根拠：

得られること：各回、合計、平均条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.skipping_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908C.skipping_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
