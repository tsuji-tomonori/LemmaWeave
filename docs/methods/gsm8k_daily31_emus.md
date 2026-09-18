# 一羽当たりの頭と脚の合計から羽数を求める

エミューの頭と脚の総数60から群れの羽数を求める。

**取得済み固定GSM8Kの1問。**

- 各エミューは頭1つ、脚2本で、欠損や余分な頭・脚はないという通常の生物学的条件を用いる。

## emus_units：一羽当たりの計数単位を求める

条件：各エミューには頭1つと脚2本がある。

根拠：

得られること：一羽は頭と脚を合わせて3単位を数える。

既習の根拠：同じ一羽に属する頭数と脚数を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.emus_units`。

## emus_count：エミューの羽数を求める

条件：一羽3単位で、群れ全体の頭と脚は60単位である。

根拠：

得られること：群れには20羽いる。

既習の根拠：60＝3×羽数という自然数方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.emus_count`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912E.emus_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
