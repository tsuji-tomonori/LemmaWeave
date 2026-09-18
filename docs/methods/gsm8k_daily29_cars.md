# 車種間の倍数関係と総数から台数を求める

模型車は合計301台、FordはChevyの2倍より3台多く、BuickはFordの4倍である。Buickの台数を求める。

**取得済み固定GSM8Kの1問。**

- Ford＝2×Chevy＋3、Buick＝4×Ford、三車種の合計＝301という整数方程式で表した。

## cars_chevys：Chevyの台数を定める

条件：三車種の台数が自然数で、Ford＝2×Chevy＋3、Buick＝4×Ford、合計301である。

根拠：

得られること：Chevyは26台である。

既習の根拠：倍数関係を総数の式へ代入し、自然数の一次方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.cars_chevys`。

## cars_fords：Fordの台数を求める

条件：Chevyが26台で、Ford＝2×Chevy＋3である。

根拠：

得られること：Fordは55台である。

既習の根拠：既知のChevy台数を倍数関係へ代入する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.cars_fords`。

## cars_buicks：Buickの台数を求める

条件：Fordが55台で、Buick＝4×Fordである。

根拠：

得られること：Buickは220台である。

既習の根拠：既知のFord台数を4倍する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912C.cars_buicks`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912C.cars_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
