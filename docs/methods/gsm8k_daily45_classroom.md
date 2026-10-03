# 教室にある本の総数

10人が各7冊持ち、教師が8冊追加したときの総数を求める。

**取得済み固定GSM8Kの1問。**

- 児童の本と教師が持参した本を同じ教室内の冊数として合計する。

## classroom_initial：児童が持つ本

条件：10人の児童がそれぞれ7冊持つ。

根拠：

得られること：児童の本は10×7=70冊。

既習の根拠：同数ずつの総数を求める乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.classroom_initial`。

## classroom_total：追加後の総数

条件：70冊ある教室へ教師が8冊を持参する。

根拠：

得られること：全部で70+8=78冊。

既習の根拠：追加分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.classroom_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917A.classroom_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
