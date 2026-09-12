# 予算の残額を教材費として求める

1000ドルの予算から食費30%、住居費15%、娯楽費25%を払い、残りの教材費を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 割合はいずれも同じ1000ドルに対する割合で、残額を教材費とする。

## course_food：食費

条件：食費は1000ドルの30%。

根拠：

得られること：食費は300ドル。

既習の根拠：中学校までの割合計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.course_food`。

## course_accommodation：住居費

条件：住居費は1000ドルの15%。

根拠：

得られること：住居費は150ドル。

既習の根拠：中学校までの割合計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.course_accommodation`。

## course_entertainment：娯楽費

条件：娯楽費は1000ドルの25%。

根拠：

得られること：娯楽費は250ドル。

既習の根拠：中学校までの割合計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.course_entertainment`。

## course_materials：教材費

条件：教材費は予算から他の3費目を引いた残額。

根拠：

得られること：1000-300-150-250=300ドル。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.course_materials`。

## course_exists：条件の充足

条件：各費目を300、150、250、300ドルと置く。

根拠：

得られること：割合と残額の全条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.course_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907E.course_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
