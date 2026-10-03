# ホールの椅子総数

32卓を椅子数別に分け、椅子の総数を求める。

**取得済み固定GSM8Kの1問。**

- 2脚卓が半数、3脚卓が5卓、残りを4脚卓とする。

## chairs_half：2脚の卓数

条件：32卓の半分が2脚卓。

根拠：

得られること：16卓。

既習の根拠：半分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.chairs_half`。

## chairs_rest：4脚の卓数

条件：全32卓から2脚卓16卓と3脚卓5卓を除く。

根拠：

得られること：11卓。

既習の根拠：排反な分類の残り。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.chairs_rest`。

## chairs_parts：区分別の椅子数

条件：各卓の椅子数を卓数に掛ける。

根拠：

得られること：2脚卓32脚、3脚卓15脚、4脚卓44脚。

既習の根拠：単価型の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.chairs_parts`。

## chairs_total：総椅子数

条件：3区分は全卓を重複なく覆う。

根拠：

得られること：32+15+44=91脚。

既習の根拠：部分量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.chairs_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911B.chairs_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
