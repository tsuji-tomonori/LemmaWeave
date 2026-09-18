# 倍増する3隻の乗員を最初の人数で表す

百年に1回船を食べる怪物。300年の3隻で847人、各船の人数は前の2倍。最初の船は何人？

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- 300年は3回の襲撃を含む問題の区切りとして読む。期間の両端を二重に数えない。
- 数値だけを仮定せず、未知の最初の人数から倍増と総和の関係を導く。

## ships_second：2隻目を表す

条件：最初a人、次b人。

根拠：

得られること：b=2a。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.ships_second`。

## ships_third：3隻目を表す

条件：3隻目cは2隻目の2倍。

根拠：

得られること：c=2b=4a。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.ships_third`。

## ships_balance：総人数の保存

条件：3隻の合計847人。

根拠：

得られること：a+2a+4a=7a=847。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.ships_balance`。

## ships_first：最初の人数

条件：7a=847、7≠0。

根拠：

得られること：a=847÷7=121人。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.ships_first`。

## ships_exists：条件の充足

条件：各船121,242,484人。

根拠：

得られること：倍増し合計847、人数は正整数。

既習の根拠：中学既習の四則演算と一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907.ships_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907.ships_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
