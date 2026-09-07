# 同じ住居費の割合変化から旧月収を逆算する

家賃・光熱費は旧月収の40%。昇給600ドル後は新月収の25%。旧月収を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 家賃・光熱費の金額自体は昇給前後で変わらないという原文の比較を使う。

## income_cost_equation：同じ住居費を等置

条件：旧月収o、新月収o+600で、同じ住居費がそれぞれ40%、25%。

根拠：

得られること：(2/5)o=(1/4)(o+600)。

既習の根拠：中学校までの割合と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.income_cost_equation`。

## income_old：旧月収を解く

条件：(2/5)o=(1/4)(o+600)。

根拠：

得られること：8o=5o+3000、よってo=1000ドル。

既習の根拠：中学校までの一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.income_old`。

## income_housing：住居費を確認

条件：旧月収1000ドルの40%。

根拠：

得られること：住居費は400ドル。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.income_housing`。

## income_new：新月収を確認

条件：旧月収1000ドルに600ドル加える。

根拠：

得られること：新月収1600ドル、その25%は400ドル。

既習の根拠：中学校までの四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.income_new`。

## income_exists：条件の充足

条件：旧1000、住居費400、新1600。

根拠：

得られること：40%と25%の両条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.income_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907C.income_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
