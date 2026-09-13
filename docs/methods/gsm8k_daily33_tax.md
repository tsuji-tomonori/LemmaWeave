# 税率から手取り額を求める

年収60000ドルから18%の税を支払った残額を求める。

**取得済み固定GSM8Kの1問。**

- 控除などはなく、年収全額に18%を適用する。

## tax_amount：税額を求める

条件：60000ドルの18%を税として払う。

根拠：

得られること：税額は10800ドル。

既習の根拠：100×税額=18×60000という割合の式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.tax_amount`。

## tax_remaining：残額を求める

条件：60000ドルから税10800ドルを払う。

根拠：

得られること：残額は49200ドル。

既習の根拠：60000=10800+49200となる差を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.tax_remaining`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913B.tax_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
