# 差から二人の合計経験年数を求める

Jamesの教職経験40年、partnerは10年短いとき、合計経験年数を求める。

**取得済み固定GSM8Kの1問。**

- 合計経験は二人の延べ経験年数であり、暦上の重複年も各人分として足す。

## teaching_partner：partnerの経験

条件：Jamesの40年より10年短い。

根拠：

得られること：30年。

既習の根拠：差の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.teaching_partner`。

## teaching_combined：合計経験年数

条件：40年と30年を延べで足す。

根拠：

得られること：70年。

既習の根拠：二人の経験量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.teaching_combined`。

## teaching_exists：条件の充足

条件：partner30年、合計70年を置く。

根拠：

得られること：差と合計条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.teaching_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908C.teaching_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
