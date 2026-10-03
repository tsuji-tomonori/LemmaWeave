# 全販売商品の加重平均価格

商品別の販売数と平均価格から全商品の平均価格を求める。

**取得済み固定GSM8Kの1問。**

- 商品別平均の単純平均ではなく、売上合計÷個数合計。

## apple_phone_sales：iPhone売上

条件：100台を平均1000ドルで販売。

根拠：

得られること：売上100000ドル。

既習の根拠：単価と数量の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.apple_phone_sales`。

## apple_tablet_sales：iPad売上

条件：20台を平均900ドルで販売。

根拠：

得られること：売上18000ドル。

既習の根拠：単価と数量の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.apple_tablet_sales`。

## apple_tv_sales：Apple TV売上

条件：80台を平均200ドルで販売。

根拠：

得られること：売上16000ドル。

既習の根拠：単価と数量の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.apple_tv_sales`。

## apple_total_products：総販売数

条件：100台、20台、80台を合算。

根拠：

得られること：合計200台。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.apple_total_products`。

## apple_total_sales：総売上

条件：商品別売上を合算。

根拠：

得られること：総売上134000ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.apple_total_sales`。

## apple_average：加重平均

条件：総売上134000ドルを総数200台で均等配分。

根拠：

得られること：平均670ドル。

既習の根拠：平均=合計÷個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.apple_average`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910C.apple_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
