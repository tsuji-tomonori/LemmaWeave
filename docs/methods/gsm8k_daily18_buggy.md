# 等時間で走るバギーの平均速度

平地60mph、下りは12mph速く、上りは18mph遅い速度で、各地形を全時間の3分の1ずつ走るときの平均速度を求める。

**取得済み固定GSM8Kの1問。**

- 各速度で走る時間が等しいため、距離でなく時間を重みとする平均速度は3速度の算術平均になる。

## buggy_downhill：下りの速度

条件：平地60mphより12mph速い。

根拠：

得られること：下りは72mph。

既習の根拠：速度差の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.buggy_downhill`。

## buggy_uphill：上りの速度

条件：平地60mphより18mph遅い。

根拠：

得られること：上りは42mph。

既習の根拠：速度差の減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.buggy_uphill`。

## buggy_sum：3速度の合計

条件：平地60、下り72、上り42mph。

根拠：

得られること：合計は174mph。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.buggy_sum`。

## buggy_average：等時間平均

条件：3区間の時間が等しい。

根拠：

得られること：174÷3=58mph。

既習の根拠：平均速度=総距離÷総時間。等時間なら速度の算術平均。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.buggy_average`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910B.buggy_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
