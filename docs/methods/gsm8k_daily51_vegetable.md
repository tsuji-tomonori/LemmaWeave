# 販売した野菜の質量

にんじん15 kg、ズッキーニ13 kg、ブロッコリー8 kgの合計の半分を売った質量を求める。

**取得済み固定GSM8Kの1問。**

- 3種類の全量を合計し、その半分を販売量とする。

## vegetable_total：野菜の総質量

条件：15 kg、13 kg、8 kgを合計する。

根拠：

得られること：総質量は36 kg。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.vegetable_total`。

## vegetable_sold：販売量

条件：総質量36 kgの半分を売る。

根拠：

得られること：18 kgを売った。

既習の根拠：2等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.vegetable_sold`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918B.vegetable_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
