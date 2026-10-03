# 1日当たり追加する牛乳量

3週間で105ガロン飲むため、毎日3ガロンという案に何ガロン追加すべきか求める。

**取得済み固定GSM8Kの1問。**

- 3週間の各日に同じ量を飲む条件で日量を求める。

## milk_days_rate：期間と必要日量

条件：1週間7日として3週間に105ガロンを均等に飲む。

根拠：

得られること：期間は3×7=21日、必要日量は105÷21=5ガロン。

既習の根拠：週から日への換算と等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.milk_days_rate`。

## milk_more：追加日量

条件：必要日量5ガロンに対し、Floraの案は毎日3ガロン。

根拠：

得られること：毎日さらに5−3=2ガロン必要。

既習の根拠：必要量と予定量の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.milk_more`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917A.milk_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
