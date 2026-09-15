# 公共空間の管理予算

年間予算3200万ドルの半分が警察、1200万ドルが教育のとき、公共空間に残る予算を求める。

**取得済み固定GSM8Kの1問。**

- 金額の単位を100万ドルに統一する。

## budget_policing：警察予算

条件：3200万ドルの半分。

根拠：

得られること：警察予算は1600万ドル。

既習の根拠：半分への等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.budget_policing`。

## budget_used：警察と教育の合計

条件：警察1600万ドル、教育1200万ドル。

根拠：

得られること：使用済みは2800万ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.budget_used`。

## budget_spaces：公共空間の残額

条件：総予算3200万ドルから2800万ドルを引く。

根拠：

得られること：400万ドル残る。

既習の根拠：残額の減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.budget_spaces`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909E.budget_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
