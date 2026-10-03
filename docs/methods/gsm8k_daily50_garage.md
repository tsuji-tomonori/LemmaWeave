# ぬいぐるみ1体の価格

3ドルの磁石がぬいぐるみ2体の合計価格の4分の1であるとき、1体の価格を求める。

**取得済み固定GSM8Kの1問。**

- ステッカーとの価格比は結論に不要。

## garage_pair：2体分の価格

条件：3ドルの磁石は2体分の4分の1。

根拠：

得られること：ぬいぐるみ2体は12ドル。

既習の根拠：4倍。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.garage_pair`。

## garage_single：1体の価格

条件：同価格の2体で12ドル。

根拠：

得られること：1体6ドル。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.garage_single`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918A.garage_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
