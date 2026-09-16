# 同率賞与を含む今年の収入

昨年の給与と賞与から率を求め、今年の給与へ適用する。

**取得済み固定GSM8Kの1問。**

- 賞与率は各年の基本給与に対する割合とする。

## bonus_percent：賞与率

条件：昨年は給与100000ドルに賞与10000ドル。

根拠：

得られること：賞与率は10000÷100000=10%。

既習の根拠：割合は部分量÷基準量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.bonus_percent`。

## bonus_total：今年の総収入

条件：今年の給与200000ドルにも10%の賞与率を適用する。

根拠：

得られること：賞与20000ドル、合計220000ドル。

既習の根拠：基準量×割合を加算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.bonus_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917B.bonus_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
