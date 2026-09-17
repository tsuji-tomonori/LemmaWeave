# 3年間の給与総額

月給6000ドルが1年後に30%上がるとき、3年間の給与総額を求める。

**取得済み固定GSM8Kの1問。**

- 30%昇給は1年終了後に一度だけ行われ、2年目と3年目は月給7800ドルで一定とする。

## salary_first_and_raise：初年度と昇給後月給

条件：初年度月給6000ドル、12か月後に30%昇給する。

根拠：

得られること：初年度は72000ドル、昇給額1800ドル、昇給後月給7800ドル。

既習の根拠：月給×月数と割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.salary_first_and_raise`。

## salary_later：後半2年間の給与

条件：2年目と3年目は月給7800ドルで各12か月。

根拠：

得られること：後半2年間は187200ドル。

既習の根拠：月給×12か月×2年。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.salary_later`。

## salary_total：3年間の総額

条件：初年度72000ドル、後半2年間187200ドル。

根拠：

得られること：合計は259200ドル。

既習の根拠：期間別給与の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.salary_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917D.salary_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
