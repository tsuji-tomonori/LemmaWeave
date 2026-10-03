# ピニャータと菓子の総費用を求める

13ドルのピニャータと、4袋×9ドル、3袋×5ドル、5袋×7ドルの菓子の総費用を求める。

**取得済み固定GSM8Kの1問。**

- 各価格は1袋当たりで、ピニャータ本体も総額に含める。

## treats_reeses：Reese's代

条件：4袋、1袋9ドル。

根拠：

得られること：4×9=36ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.treats_reeses`。

## treats_snickers：Snickers代

条件：3袋、1袋5ドル。

根拠：

得られること：3×5=15ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.treats_snickers`。

## treats_skittles：Skittles代

条件：5袋、1袋7ドル。

根拠：

得られること：5×7=35ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.treats_skittles`。

## treats_total：総費用

条件：本体13ドルと3種類の菓子代を足す。

根拠：

得られること：13+36+15+35=99ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.treats_total`。

## treats_exists：条件の充足

条件：各菓子代と総額を36、15、35、99ドルと置く。

根拠：

得られること：全ての購入条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.treats_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907E.treats_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
