# 従業員昇給分を本人給与から振り替える

Emilyの年俸100万ドルの一部で10人の従業員を各2万ドルから3万5千ドルへ昇給するとき、Emilyの新年俸を求める。

**取得済み固定GSM8Kの1問。**

- 税・諸経費はなく、昇給総額をEmilyの年俸からそのまま振り替える。

## salary_raise：1人当たりの昇給額を求める

条件：現在2万ドルから目標3万5千ドルへ上げる。

根拠：

得られること：1人当たり15,000ドルの増額。

既習の根拠：目標額から現在額を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.salary_raise`。

## salary_total_raise：10人分の増額を求める

条件：同額の増額を10人全員へ行う。

根拠：

得られること：必要総額は150,000ドル。

既習の根拠：1人分を人数倍する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.salary_total_raise`。

## salary_new：Emilyの新年俸を求める

条件：100万ドルから昇給総額15万ドルを負担する。

根拠：

得られること：新年俸は850,000ドル。

既習の根拠：元の額から負担額を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.salary_new`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914C.salary_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
