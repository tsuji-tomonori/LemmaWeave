# カスタードパイの売上

6個のパイを各10切れにし、1切れ3ドルですべて売る売上を求める。

**取得済み固定GSM8Kの1問。**

- 全60切れが1切れ3ドルで売れるものとする。

## pie_slices：切れ数

条件：6個を各10切れにする。

根拠：

得られること：60切れになる。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.pie_slices`。

## pie_revenue：売上

条件：60切れを1切れ3ドルで売る。

根拠：

得られること：売上は180ドル。

既習の根拠：売上＝数量×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.pie_revenue`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918B.pie_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
