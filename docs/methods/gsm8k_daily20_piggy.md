# 貯金の20%増加

200ドルにその20%を追加した総額を求める。

**取得済み固定GSM8Kの1問。**

- 20% moreを元の200ドルに対する20%増と読む。

## piggy_increase：増加額

条件：200ドルの20%。分母100を払うと100×増加額=20×200。

根拠：

得られること：増加額は40ドル。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.piggy_increase`。

## piggy_total：増加後総額

条件：元の200ドルに40ドルを加える。

根拠：

得られること：答えは240ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.piggy_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910D.piggy_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
