# 2口座の合計残高

Ginaの2口座がそれぞれBettyの3456ドルの4分の1であるとき合計残高を求める。

**取得済み固定GSM8Kの1問。**

- 4分の1を4×各口座残高＝Betty残高と表す。

## account_each：各口座の残高

条件：Bettyは3456ドルで、各口座はその4分の1。

根拠：

得られること：各口座は864ドル。

既習の根拠：4×4分の1の量＝元の量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.account_each`。

## account_combined：2口座合計

条件：同額864ドルの口座が2つ。

根拠：

得られること：合計1728ドル。

既習の根拠：合計＝個数×各量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.account_combined`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912B.account_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
