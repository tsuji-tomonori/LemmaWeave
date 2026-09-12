# オフシーズンの月平均作業数を求める

月100ドルを4か月使う野球用品代を、残り8か月に1回10ドルの作業で貯める月平均回数を求める。

**取得済み固定GSM8Kの1問。**

- 1年を12か月とし、野球をしない8か月で必要額を均等に貯める。

## saving_cost：シーズン用品代

条件：月100ドルを4か月。

根拠：

得られること：400ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.saving_cost`。

## saving_months：貯金する月数

条件：12か月からシーズン4か月を引く。

根拠：

得られること：8か月。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.saving_months`。

## saving_income：月の必要収入

条件：400ドルを8か月で均等に貯める。

根拠：

得られること：月50ドル。

既習の根拠：中学校までの除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.saving_income`。

## saving_chores：月平均の作業数

条件：1作業10ドルで月50ドルを得る。

根拠：

得られること：月平均5作業。

既習の根拠：中学校までの除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.saving_chores`。

## saving_exists：条件の充足

条件：必要額400、8か月、月50ドル、5作業と置く。

根拠：

得られること：用品代を貯める全条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.saving_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907E.saving_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
