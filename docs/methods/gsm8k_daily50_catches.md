# Tammyの捕球回数

Joeの23回からDerekの回数を求め、その3分の1より16回多いTammyの回数を求める。

**取得済み固定GSM8Kの1問。**

- Derekの回数が3で割り切れることも式に含める。

## catches_derek：Derekの回数

条件：Joeの23回の2倍より4回少ない。

根拠：

得られること：Derekは42回。

既習の根拠：倍と減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.catches_derek`。

## catches_third：Derekの3分の1

条件：42回を3等分する。

根拠：

得られること：3分の1は14回。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.catches_third`。

## catches_tammy：Tammyの回数

条件：14回より16回多い。

根拠：

得られること：Tammyは30回。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.catches_tammy`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918A.catches_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
