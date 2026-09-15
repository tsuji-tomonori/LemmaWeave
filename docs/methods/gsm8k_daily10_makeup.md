# 容器からチューブ数と対応人数を求める

リップグロス容器6個に各2本のチューブがあり、各チューブ3人分なら何人分かを求める。

**取得済み固定GSM8Kの1問。**

- 6 tubsと各2 tubesを別階層として数える。

## makeup_tubes：チューブ総数

条件：容器6個に各2本。

根拠：

得られること：12本。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.makeup_tubes`。

## makeup_people：対応人数

条件：12本の各チューブが3人分で、これが必要量に一致する。

根拠：

得られること：36人。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.makeup_people`。

## makeup_exists：条件の充足

条件：チューブ12本、人数36人と置く。

根拠：

得られること：容器数と1本当たり人数を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.makeup_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908E.makeup_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
