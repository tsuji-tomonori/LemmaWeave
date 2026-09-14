# 販売割当までに必要な残り台数

最初の3日と次の4日の販売台数を合計し、50台の割当との差を求める。

**取得済み固定GSM8Kの1問。**

- remaining daysは残る23日間を指すが、問われるのは期間内に合計して売るべき台数であり、1日当たりではない。

## sales_week：期間別の販売台数

条件：最初の3日は1日5台、次の4日は1日3台売る。

根拠：

得られること：各期間で15台と12台を売った。

既習の根拠：一定の日販売数に日数を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.sales_week`。

## sales_sold：販売済み台数

条件：二つの期間の販売台数を足す。

根拠：

得られること：販売済みは27台。

既習の根拠：互いに重ならない期間の数量を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.sales_sold`。

## sales_remaining：割当までの残り

条件：割当50台から販売済み27台を引く。30日のうち7日経過したため残日数も23日。

根拠：

得られること：残る23日間で合計23台を売る必要がある。

既習の根拠：不足量=目標量−達成量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.sales_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915B.sales_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
