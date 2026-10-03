# 三つの贈物に必要な包装紙面積を求める

第一に2平方フィート、第二にその3/4、第三に第一と第二の合計量を使う。総面積を求める。

**取得済み固定GSM8Kの1問。**

- 三つの包装紙は重複使用せず、必要面積を加える。

## wrapping_second：第二の面積

条件：第一は2平方フィート、第二はその3/4。

根拠：

得られること：第二は3/2平方フィート。

既習の根拠：基準量×割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.wrapping_second`。

## wrapping_third：第三の面積

条件：第三は第一2と第二3/2の合計。

根拠：

得られること：第三は7/2平方フィート。

既習の根拠：同じ単位の面積を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.wrapping_third`。

## wrapping_total：三つの総面積

条件：各面積は2、3/2、7/2平方フィート。

根拠：

得られること：合計7平方フィート。

既習の根拠：重複しない三つの使用面積を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.wrapping_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912D.wrapping_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
