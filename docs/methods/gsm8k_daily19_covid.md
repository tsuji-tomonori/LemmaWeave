# 3日目後の陽性者数

初日2000人から、2日目と3日目の新規陽性・回復を順に反映する。

**取得済み固定GSM8Kの1問。**

- 新規陽性を加え、同日の回復者を引く。

## covid_after_second：2日目後

条件：2000人に500人を加え、50人の回復を引く。

根拠：

得られること：2日目後は2450人。

既習の根拠：増減の加減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.covid_after_second`。

## covid_before_third_recovery：3日目回復前

条件：2450人に新規1500人を加える。

根拠：

得られること：回復反映前は3950人。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.covid_before_third_recovery`。

## covid_after_third：3日目後

条件：3950人から回復200人を引く。

根拠：

得られること：答えは3750人。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.covid_after_third`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910C.covid_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
