# 家族6人の入場券

大人3人と子ども3人のミュージカル入場券の合計を求める。

**取得済み固定GSM8Kの1問。**

- 母、父、祖母を大人3人、妹3人を子ども3人と数える。

## tickets_parts：大人券と子ども券

条件：大人3人は各12ドル、子ども3人は各10ドル。

根拠：

得られること：大人券36ドル、子ども券30ドル。

既習の根拠：単価×人数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.tickets_parts`。

## tickets_total：入場券合計

条件：大人券36ドルと子ども券30ドル。

根拠：

得られること：合計は66ドル。

既習の根拠：費用の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.tickets_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917D.tickets_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
