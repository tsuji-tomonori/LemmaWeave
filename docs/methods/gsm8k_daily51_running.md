# 4日間の平均走行距離

4.2、3.8、3.6、4.4マイルの4日分について、走った日の平均距離を求める。

**取得済み固定GSM8Kの1問。**

- 小数誤差を避けるため各距離を0.1マイル単位の自然数で表す。

## running_total：総距離

条件：42、38、36、44という0.1マイル単位の値を合計する。

根拠：

得られること：総距離は160単位、すなわち16マイル。

既習の根拠：小数を10倍した整数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.running_total`。

## running_average_tenths：平均の0.1マイル単位値

条件：160単位を走った4日で等分する。

根拠：

得られること：平均は40単位。

既習の根拠：平均＝合計÷個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.running_average_tenths`。

## running_average_miles：マイルへ戻す

条件：10単位が1マイル。

根拠：

得られること：平均距離は4マイル。

既習の根拠：単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.running_average_miles`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918B.running_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
