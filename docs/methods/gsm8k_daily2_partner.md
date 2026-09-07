# 比2対5からMikeの残金を求める

利益をMike:Johnson=2:5で分け、Johnsonが2500ドル。Mikeが200ドルのシャツを買った後の残金は？

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- 2:5はそれぞれMikeとJohnsonの順。シャツ代以外の支出はない。

## partner_part：比の1単位

条件：Johnsonの5単位が2500ドル。

根拠：

得られること：1単位500ドル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.partner_part`。

## partner_mike：Mikeの取り分

条件：Mikeは2単位。

根拠：

得られること：2×500=1000ドル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.partner_mike`。

## partner_remaining：購入後の残金

条件：1000ドルから200ドルを支出。

根拠：

得られること：800ドル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.partner_remaining`。

## partner_exists：条件の充足

条件：単位500、Mike1000、残金800。

根拠：

得られること：比と支出の関係を満たす。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.partner_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907B.partner_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
