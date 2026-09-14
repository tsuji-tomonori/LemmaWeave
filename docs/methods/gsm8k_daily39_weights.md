# 下降時の重量

30ポンドのプレート10枚が下降時に20%重く感じる重量を求める。

**取得済み固定GSM8Kの1問。**

- 20%は基礎重量に対する増加率。

## weights_base：基礎重量

条件：30ポンドが10枚。

根拠：

得られること：300ポンド。

既習の根拠：枚数×1枚の重量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.weights_base`。

## weights_felt：増加後

条件：300ポンドを20%増す。

根拠：

得られること：60を加え360ポンド。

既習の根拠：増加分は基礎量×20/100。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.weights_felt`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914E.weights_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
