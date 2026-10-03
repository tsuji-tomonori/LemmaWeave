# 50歳超の裁判官

40人の10%と60%を除いた残りの人数を求める。

**取得済み固定GSM8Kの1問。**

- 年齢3区分が全40人を重複なく覆う。

## judges_groups：既知2区分の人数

条件：40人の10%が30歳未満、60%が30〜50歳。

根拠：

得られること：それぞれ4人と24人。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.judges_groups`。

## judges_over：50歳超の人数

条件：残りが50歳超で、3区分の合計は40人。

根拠：

得られること：50歳超は12人。

既習の根拠：残数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.judges_over`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917E.judges_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
