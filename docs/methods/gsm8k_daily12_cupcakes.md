# 複数クラス分のカップケーキを数える

30人ずつの4年生3クラスと50人の体育クラスに1人1個ずつ用意する。

**取得済み固定GSM8Kの1問。**

- 各生徒に1個用意する。

## cupcakes_fourth：4年生分

条件：3クラスに各30人。

根拠：

得られること：3×30=90個。

既習の根拠：同数群の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.cupcakes_fourth`。

## cupcakes_total：全クラス分

条件：4年生90人と体育50人。

根拠：

得られること：140個。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.cupcakes_total`。

## cupcakes_exists：条件の充足

条件：3、30、90、50、140と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.cupcakes_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909A.cupcakes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
