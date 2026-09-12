# 返済済み額から残る信用枠を求める

100ドルの信用枠を全額使い、15ドルと23ドルを返した。次回までに残りいくら返すか。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- credit of $100を借入残高100ドルと読み、次回前に全額返済する条件を使う。

## credit_repaid：返済済み額

条件：火曜15ドルと木曜23ドルを返済した。

根拠：

得られること：返済済みは15+23=38ドル。

既習の根拠：中学校までの四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.credit_repaid`。

## credit_remaining：未返済額

条件：借入残高100ドルから返済済み38ドルを引く。

根拠：

得られること：100-38=62ドルを次回前に返す。

既習の根拠：中学校までの四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.credit_remaining`。

## credit_exists：条件の充足

条件：返済済み38ドル、残額62ドル。

根拠：

得られること：元の返済関係を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.credit_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907C.credit_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
