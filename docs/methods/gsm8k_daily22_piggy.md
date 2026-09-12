# 初年の貯金額

毎年直前年の2倍を貯め、4年合計450ドルとなるときの初年額を求める。

**取得済み固定GSM8Kの1問。**

- 各年に新たに入れた額の関係であり、累積残高を倍にする条件ではない。

## piggy_pattern：各年の額

条件：初年をxドルとし、2年目以降は直前年の2倍である。

根拠：

得られること：4年間の各額はx、2x、4x、8x。

既習の根拠：同じ倍率を順に掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.piggy_pattern`。

## piggy_weighted_total：合計式

条件：4年合計が450ドルである。

根拠：

得られること：x+2x+4x+8x=15x=450。

既習の根拠：同類項の整理。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.piggy_weighted_total`。

## piggy_first：初年額

条件：15x=450でxはドル単位の非負整数である。

根拠：

得られること：答えはx=450÷15=30ドル。

既習の根拠：一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.piggy_first`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911A.piggy_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
