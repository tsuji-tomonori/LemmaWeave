# 半分から5本引く関係を順序通り扱う

マンゴー60本。ココナツはマンゴーの半分より5本少ない。合計何本？

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- (60−5)/2ではなく60/2−5。原題にない第三の樹種は合計へ加えない。

## trees_half：マンゴーの半分

条件：2h=60。

根拠：

得られること：h=30本。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.trees_half`。

## trees_coconut：5本少ない

条件：c+5=h。

根拠：

得られること：c=30−5=25本。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.trees_coconut`。

## trees_total：2種類の合計

条件：マンゴー60とココナツ25。

根拠：

得られること：t=85本。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.trees_total`。

## trees_exists：個数と充足

条件：h=30,c=25,t=85。

根拠：

得られること：すべて自然数で各条件を満たす。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.trees_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907.trees_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
