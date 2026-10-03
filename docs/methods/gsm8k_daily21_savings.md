# 修理後の貯金

毎月25ドルを2年間貯め、400ドルを修理に使った後の残額を求める。

**取得済み固定GSM8Kの1問。**

- 利息やほかの入出金はなく、2年間毎月25ドルを入れたものとする。

## savings_months：貯金した月数

条件：1年12か月で2年間。

根拠：

得られること：貯金期間は2×12=24か月。

既習の根拠：年から月への単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.savings_months`。

## savings_total：修理前の貯金

条件：24か月、毎月25ドルを貯める。

根拠：

得られること：修理前は25×24=600ドル。

既習の根拠：総量=単位量×回数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.savings_total`。

## savings_left：修理後の残額

条件：600ドルから修理費400ドルを支払う。

根拠：

得られること：答えは600−400=200ドル。

既習の根拠：残額=所持額−支出額。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.savings_left`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910E.savings_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
